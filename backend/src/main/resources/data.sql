CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    mobile VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO users (username, email, password, first_name, last_name, mobile)
VALUES 
('john_doe', 'john.doe@example.com', '$2a$10$DowJones.DOEENCODEDPASSWORD', 'John', 'Doe', '1234567890');

INSERT INTO users (username, email, password, first_name, last_name, mobile)
VALUES 
('jane_smith', 'jane.smith@example.com', '$2a$10$JaneSmith.ENCRYPTEDPASSWORD', 'Jane', 'Smith', '0987654321');

INSERT INTO users (username, email, password, first_name, last_name, mobile)
VALUES 
('alice_jones', 'alice.jones@example.com', '$2a$10$AliceJones.ENCRYPTEDPASSWORD', 'Alice', 'Jones', '2345678901');

INSERT INTO users (username, email, password, first_name, last_name, mobile)
VALUES 
('bob_brown', 'bob.brown@example.com', '$2a$10$BobBrown.ENCRYPTEDPASSWORD', 'Bob', 'Brown', '3456789012');

INSERT INTO users (username, email, password, first_name, last_name, mobile)
VALUES 
('charlie_clark', 'charlie.clark@example.com', '$2a$10$CharlieClark.ENCRYPTEDPASSWORD', 'Charlie', 'Clark', '4567890123');

INSERT INTO users (username, email, password, first_name, last_name, mobile)
VALUES 
('david_white', 'david.white@example.com', '$2a$10$DavidWhite.ENCRYPTEDPASSWORD', 'David', 'White', '5678901234');

INSERT INTO users (username, email, password, first_name, last_name, mobile)
VALUES 
('emma_hall', 'emma.hall@example.com', '$2a$10$EmmaHall.ENCRYPTEDPASSWORD', 'Emma', 'Hall', '6789012345');

INSERT INTO users (username, email, password, first_name, last_name, mobile)
VALUES 
('frank_thomas', 'frank.thomas@example.com', '$2a$10$FrankThomas.ENCRYPTEDPASSWORD', 'Frank', 'Thomas', '7890123456');

INSERT INTO users (username, email, password, first_name, last_name, mobile)
VALUES 
('grace_lee', 'grace.lee@example.com', '$2a$10$GraceLee.ENCRYPTEDPASSWORD', 'Grace', 'Lee', '8901234567');

INSERT INTO users (username, email, password, first_name, last_name, mobile)
VALUES 
('henry_king', 'henry.king@example.com', '$2a$10$HenryKing.ENCRYPTEDPASSWORD', 'Henry', 'King', '9012345678');
