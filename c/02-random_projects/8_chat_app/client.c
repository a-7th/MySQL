#include <stdio.h>
#include <stdlib.h>         // exit
#include <string.h>         // strlen
#include <unistd.h>         // close
#include <arpa/inet.h>      // inet_addr
#include <sys/socket.h>     // socket, connect, send, recv

int	main() {

    // 1. Create a socket (like creating a phone)
	int	client_fd = socket(AF_INET, SOCK_STREAM, 0);
	if (client_fd < 0) {
		perror("socket failed");
		return (1);
	}

    // 2. Create and fill server address structure
	struct sockaddr_in server_addr;

	server_addr.sin_family = AF_INET;         // use IPv4
	server_addr.sin_port = htons(8080);       // same port as server
	server_addr.sin_addr.s_addr = inet_addr("127.0.0.1"); // connect to localhost

    // 3. Connect to the server
	if (connect(client_fd, (struct sockaddr *)&server_addr, sizeof(server_addr)) < 0) {
		perror("connect failed");
		return (1);
	}

	printf("Connected to server!\n");

    // 4. Chat loop
	char	buffer[1024];

	while (1) {

        // take input from user
		printf("You: ");
		fgets(buffer, sizeof(buffer), stdin);

        // send message to server
		send(client_fd, buffer, strlen(buffer), 0);

        // receive response from server
		int bytes = recv(client_fd, buffer, sizeof(buffer) - 1, 0);

        // if server disconnects
		if (bytes <= 0) {
			printf("Server disconnected\n");
			break;
		}

        // null terminate string
		buffer[bytes] = '\0';

        // print server response
		printf("Server: %s\n", buffer);
	}

    // 5. Close socket
	close(client_fd);

	return (0);
}
