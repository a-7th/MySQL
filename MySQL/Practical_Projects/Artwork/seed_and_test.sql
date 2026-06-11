USE Artwork;

INSERT INTO Artist(A_ID, A_Name, Bio) 
VALUES(23, 'PUPU', 'gg w stream.');
INSERT INTO Client(C_ID, C_Name, Acc_Type) 
VALUES(22, 'PIPI', 'Premium');
INSERT INTO Artworks(Artwork_ID, Title, Price, Statu, Artist_FK) 
VALUES(1, 'Mona pipi', 2222.22, 'Available', 23);
