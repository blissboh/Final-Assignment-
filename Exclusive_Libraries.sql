-- create database Exclusive_Libraries;

use Exclusive_Libraries;

-- CREATE TABLE Books(
-- BookID INT PRIMARY KEY, 
-- Title VARCHAR(100) NOT NULL, 
-- Author VARCHAR(100) NOT NULL, 
-- Genre VARCHAR(50) NOT NULL, 
-- CopiesAvailable INT DEFAULT 1 CHECK (CopiesAvailable >= 0)
-- );

-- CREATE TABLE Members (
-- MemberID INT PRIMARY KEY, 
-- MemberName VARCHAR(100) NOT NULL, 
-- Email VARCHAR(100) UNIQUE NOT NULL
-- );

-- CREATE TABLE Loans (
--     LoanID INT PRIMARY KEY, 
--     MemberID INT NOT NULL, 
--     BookID INT NOT NULL,
--     LoanDate DATE DEFAULT (CURRENT_DATE) NOT NULL, 
--     ReturnDate DATE, 
--     FOREIGN KEY (MemberID) REFERENCES Members(MemberID), 
--     FOREIGN KEY (BookID) REFERENCES Books(BookID)
-- );

-- INSERT INTO Books (BookID, Title, Author, Genre, CopiesAvailable) VALUES
-- (001, 'Things Fall Apart', 'Chinua Achebe', 'Historical Fiction', 4),
-- (002, 'Every Day Is for the Thief', 'Teju Cole', 'Psychological Fiction', 6),
-- (003, 'Born a Crime', 'Trevor Noah', 'Memoir', '3'),
-- (004, 'Purple Hibiscus', 'Chimamanda Ngozi Adichie', 'Literary Fiction', 5),
-- (005, 'Waiting for an Angel', 'Helon Habila', 'Political Fiction', 2);

-- INSERT INTO Members (MemberID, MemberName, Email) VALUES
-- (1, 'Duke Michael', 'dukemichael@yahoo.com'),
-- (2, 'Treasure Ola', 'treasure.o@gmail.com'),
-- (3, 'Emmanuel Tunji', 'emmanuelt@yahoo.com'),
-- (4, 'Linda Bello', 'linda.bello@hotmail.com');

-- INSERT INTO Loans (LoanID, MemberID, BookID, LoanDate, ReturnDate) VALUES
-- (1, 1, 003, '2025-07-01', '2025-07-10'),
-- (2, 2, 001, '2025-07-02', NULL),
-- (3, 3, 004, '2025-07-03', '2025-07-09'),
-- (4, 4, 002, '2025-07-04', NULL),
-- (5, 1, 005, '2025-07-05', '2025-07-12'),
-- (6, 2, 002, '2025-07-06', '2025-07-13'),
-- (7, 3, 001, '2025-07-07', '2025-07-14'),
-- (8, 4, 003, '2025-07-08', '2025-07-15'),
-- (9, 1, 004, '2025-07-09', '2025-07-17'),
-- (10, 2, 005, '2025-07-10', '2025-07-19');

-- INSERT INTO Books (BookID, Title, Author, Genre, CopiesAvailable) VALUES 
-- (006, 'Welcome to Lagos', 'Chibundu Onuzo', 'Contemporary Fiction', 4);

-- SELECT * 
-- FROM Books;

-- UPDATE Books
-- SET CopiesAvailable = 7
-- WHERE BookID = 3;

-- SELECT * 
-- FROM Books 
-- WHERE BookID = 006;

-- DELETE FROM Books
-- WHERE BookID = 006;

-- SELECT * 
-- FROM Books
-- WHERE Genre LIKE '%Fiction%'
-- ORDER BY Title ASC;

-- SELECT BookID, COUNT(*) AS TotalLoans
-- FROM Loans
-- GROUP BY BookID
-- ORDER BY TotalLoans DESC;

-- SELECT AVG(CopiesAvailable) AS AverageCopies
-- FROM Books;

-- SELECT M.MemberName, COUNT(L.LoanID) AS CurrentlyLoanedBooks
-- FROM Members M
-- JOIN Loans L ON M.MemberID = L.MemberID
-- WHERE L.ReturnDate IS NULL
-- GROUP BY M.MemberName
-- ORDER BY CurrentlyLoanedBooks DESC;

-- SELECT M.MemberName, COUNT(L.LoanID) AS ActiveLoans
-- FROM Members M
-- JOIN Loans L ON M.MemberID = L.MemberID
-- WHERE L.ReturnDate IS NULL
-- GROUP BY M.MemberName
-- HAVING COUNT(L.LoanID) > 2
-- ORDER BY ActiveLoans DESC;
