CREATE DATABASE LibraryDB;
USE LibraryDB;

-- TABLE FOR BOOKS >>>>>>

CREATE TABLE Books(
Book_ID INT PRIMARY KEY AUTO_INCREMENT,
Title VARCHAR(255) NOT NULL,
Author VARCHAR(255) NOT NULL,
Genre VARCHAR(100),
Year_Published INT
);

-- TABLE FOR MEMBER >>>>>

CREATE TABLE Member(
Member_ID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(255) NOT NULL,
Address VARCHAR(255),
Phone_Number Varchar(15)
);

-- TABLE FOR LOANS >>>>>

CREATE TABLE Loans (
Loan_ID INT PRIMARY KEY AUTO_INCREMENT,
Book_ID INT,
Member_ID INT,
Loan_Date DATE,
Return_Date DATE,
FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID)
);

-- INSERT THE DATA IN TABLE BOOKS <><><><><><>

INSERT INTO Books (Title, Author, Genre,Year_Published)
 VALUES
("To Kill a Mockingbird", "Harper Lee", "Fiction", 1960),
("1984", "George Orwell", "Dystopian", 1949),
("Moby Dick", "Herman Melville", "Adventure", 1851),
("The Great Gatsby", "F. Scott Fitzgerald", "Classic", 1925),
("Pride and Prejudice", "Jane Austen", "Romance", 1813),
("The Catcher in the Rye", "J.D. Salinger", "Fiction", 1951),
("The Hobbit", "J.R.R. Tolkien", "Fantasy", 1937),
("Brave New World", "Aldous Huxley", "Dystopian", 1932),
("War and Peace", "Leo Tolstoy", "Historical", 1869),
("Crime and Punishment", "Fyodor Dostoevsky", "Philosophical", 1866),
("The Odyssey", "Homer", "Epic", 800),
("The Brothers Karamazov", "Fyodor Dostoevsky", "Philosophical", 1880),
("Les Misérables", "Victor Hugo", "Historical", 1862),
("One Hundred Years of Solitude", "Gabriel Garcia Marquez", "Magic Realism", 1967),
("Jane Eyre", "Charlotte Brontë", "Romance", 1847),
("The Divine Comedy", "Dante Alighieri", "Epic", 1320),
("The Adventures of Huckleberry Finn", "Mark Twain", "Adventure", 1884),
("Don Quixote", "Miguel de Cervantes", "Adventure", 1605),
("Ulysses", "James Joyce", "Modernist", 1922),
("The Iliad", "Homer", "Epic", 750),
("Madame Bovary", "Gustave Flaubert", "Realism", 1857),
("The Count of Monte Cristo", "Alexandre Dumas", "Adventure", 1844),
("Dracula", "Bram Stoker", "Horror", 1897),
("A Tale of Two Cities", "Charles Dickens", "Historical", 1859),
("Frankenstein", "Mary Shelley", "Horror", 1818),
("The Sound and the Fury", "William Faulkner", "Modernist", 1929),
("Wuthering Heights", "Emily Brontë", "Romance", 1847),
("The Picture of Dorian Gray", "Oscar Wilde", "Philosophical", 1890),
("Anna Karenina", "Leo Tolstoy", "Realism", 1877),
("The Sun Also Rises", "Ernest Hemingway", "Modernist", 1926);

-- VEIW DATA TABLE 
SELECT * FROM Books;

-- INSERT A DATA IN MEMBER TABLE

INSERT INTO Member (Name, Address, Phone_Number)
 VALUES
("John Doe", "123 Main St", "123-456-7890"),
("Jane Smith", "456 Elm St", "987-654-3210"),
("Alice Johnson", "789 Maple Ave", "456-789-1230"),
("Michael Brown", "234 Oak St", "321-654-9870"),
("Emily Davis", "567 Pine St", "654-321-0987"),
("David Wilson", "890 Cedar Ave", "789-123-4560"),
("Sarah Miller", "123 Birch St", "123-789-4560"),
("James Anderson", "345 Spruce St", "456-123-7890"),
("Laura White", "678 Elm St", "098-765-4321"),
("Daniel Thomas", "901 Fir St", "234-567-8901"),
("Christopher Lee", "234 Cedar St", "345-678-9012"),
("Patricia Moore", "345 Pine Ave", "456-789-0123"),
("Barbara Harris", "456 Maple St", "567-890-1234"),
("Jennifer Clark", "567 Oak Ave", "678-901-2345"),
("Robert Lewis", "678 Birch St", "789-012-3456"),
("Michael Walker", "789 Cedar Ave", "890-123-4567"),
("Linda Hall", "890 Elm St", "901-234-5678"),
("Richard Allen", "901 Pine St", "123-345-6789"),
("Charles Young", "123 Maple Ave", "234-456-7890"),
("Joseph Hernandez", "234 Oak St", "345-567-8901"),
("Thomas King", "345 Cedar St", "456-678-9012"),
("Mary Wright", "456 Birch Ave", "567-789-0123"),
("Lisa Martin", "567 Oak St", "678-890-1234"),
("Paul Green", "678 Pine Ave", "789-901-2345"),
("Kevin Scott", "789 Elm St", "890-012-3456"),
("Michelle Adams", "890 Birch St", "901-123-4567"),
("Karen Baker", "901 Cedar Ave", "123-234-5678"),
("Donna Nelson", "123 Oak St", "234-345-6789"),
("Steven Hill", "234 Birch Ave", "345-456-7890"),
("Anthony Carter", "345 Maple St", "456-567-8901");

-- VIEW A DATA
SELECT * FROM Member;

-- INSER A DATA FROM Loans

INSERT INTO Loans (Book_ID, Member_ID, Loan_Date, Return_Date) 
VALUES
(1, 3, "2023-04-10", "2023-04-24"),
(4, 4, "2023-05-15", "2023-05-29"),
(2, 5, "2023-06-12", NULL),
(3, 6, "2023-07-01", "2023-07-15"),
(6, 2, "2023-08-05", NULL),
(5, 1, "2023-09-09", "2023-09-23"),
(7, 3, "2023-10-11", NULL),
(8, 8, "2023-11-20", "2023-12-04"),
(9, 9, "2023-12-01", "2023-12-15"),
(10, 10, "2024-01-02", "2024-01-16"),
(11, 11, "2024-02-05", "2024-02-19"),
(12, 12, "2024-03-07", "2024-03-21"),
(13, 13, "2024-04-10", "2024-04-24"),
(14, 14, "2024-05-12", "2024-05-26"),
(15, 15, "2024-06-15", "2024-06-29"),
(16, 16, "2024-07-20", NULL),
(17, 17, "2024-08-10", "2024-08-24"),
(18, 18, "2024-09-01", "2024-09-15"),
(19, 19, "2024-10-05", "2024-10-19"),
(20, 20, "2024-11-12", "2024-11-26"),
(21, 21, "2024-12-01", "2024-12-15"),
(22, 22, "2025-01-04", "2025-01-18"),
(23, 23, "2025-02-10", "2025-02-24"),
(24, 24, "2025-03-15", NULL),
(25, 25, "2025-04-20", "2025-05-04"),
(26, 26, "2025-05-01", "2025-05-15"),
(27, 27, "2025-06-10", "2025-06-24"),
(28, 28, "2025-07-12", "2025-07-26"),
(29, 29, "2025-08-15", "2025-08-29"),
(30, 30, "2025-09-01", NULL);

-- VEIW FROM LOANS TABLE
SELECT * FROM Loans;

-- VEIW AUTHOR BY USING WHERE IN BOOKS TABLE
SELECT * FROM Books WHERE Author = "George Orwell";

-- VEIW AUTHOR BY USING WHERE IN MEMBER TABLE

SELECT Address FROM Member WHERE Name = "Sarah Miller";

-- Find Members Who Have Not Returned Books:

SELECT m.Name, b.Title, l.Loan_Date 
FROM Loans l
JOIN Member m ON l.Member_ID = m.Member_ID
JOIN Books b ON l.Book_ID = b.Book_ID
WHERE l.Return_Date IS NULL;

-- Get the Number of Books Loaned by Each Member:

SELECT m.Name, COUNT(l.Loan_ID) AS Numbber_Of_Loans
FROM Loans l
JOIN Member m On l.Member_ID = m.Member_ID
GROUP BY m.Name;




