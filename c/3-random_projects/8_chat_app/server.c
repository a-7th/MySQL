#include <stdio.h>
#include <stdlib.h>         // exit
#include <unistd.h>         // close
#include <arpa/inet.h>	    // inet_addr
#include <sys/socket.h>     // socket, bind, listen, accept, recv, send

int	main() {
	int	x;
	printf("to start [1] exit [0] ->");
	scanf(" %d", &x);
	while(x == 1){

    // 1. Create a socket (like creating a phone)
	int server_fd = socket(AF_INET, SOCK_STREAM, 0);
	if (server_fd < 0) {
		perror("socket failed"); //print error if creation fails
		return (1);
	}

    // 2. Create and fill address structure
	struct sockaddr_in addr;

	addr.sin_family = AF_INET;         // use IPv4
	addr.sin_port = htons(8080);       // port 8080 (converted to network format)
	addr.sin_addr.s_addr = INADDR_ANY; // accept connections from any IP

    // 3. Bind socket to this address (assign IP + port)
	if (bind(server_fd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
		perror("bind failed");
		return (1);
	}

    // 4. Start listening for clients
	if (listen(server_fd, 5) < 0) { // 5 = max waiting clients
		perror("listen failed");
		return (1);
	}

	printf("Server waiting for connections...\n");

    // 5. Accept a client connection
	struct sockaddr_in client_addr;       // will store client info
	socklen_t client_len = sizeof(client_addr);

    // accept() returns a NEW socket for communication
	int	client_fd = accept(server_fd, (struct sockaddr *)&client_addr, &client_len);
	if (client_fd < 0) {
		perror("accept failed");
		return (1);
	}

	printf("Client connected!\n");

    // 6. Chat loop (this makes it continuous)
	char	buffer[1024]; // buffer to store incoming messages

	while (1) {

        // receive data from client
		int bytes = recv(client_fd, buffer, sizeof(buffer) - 1, 0);

        // if client disconnects OR error happens
		if (bytes <= 0) {
			printf("Client disconnected\n");
			break; // exit loop
		}

        // add null terminator to make it a valid string
		buffer[bytes] = '\0';

        // print what client sent
		printf("Client: %s\n", buffer);

        // send same message back (echo)
		send(client_fd, buffer, bytes, 0);
	}

    // 7. Close sockets (clean exit)
	close(client_fd); // close connection with client
	close(server_fd); // stop server
	}
	if(x == 0)
		return(0);
	
	return (0);
}
