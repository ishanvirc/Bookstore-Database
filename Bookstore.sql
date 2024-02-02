CREATE DATABASE bookstore;
USE bookstore;
CREATE TABLE bookstore.Authors (
	AuthorID INT PRIMARY KEY,
    NAME VARCHAR(100),
    Bio TEXT
);
CREATE TABLE bookstore.Categories (
	CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);
CREATE TABLE bookstore.Books (
	BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    CategoryID INT,
    Price DECIMAL(10,2),
    StockQuantity INT,
    FOREIGN KEY (AuthorID) REFERENCES bookstore.Authors(AuthorID),
    FOREIGN KEY (CategoryID) REFERENCES bookstore.Categories(CategoryID)
);
CREATE TABLE bookstore.Customers (
	CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address TEXT
);
CREATE TABLE bookstore.Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    BookID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES bookstore.Customers(CustomerID),
    FOREIGN KEY (BookID) REFERENCES bookstore.Books(BookID)
);

-- Author
INSERT INTO bookstore.Authors (AuthorID, Name, Bio) VALUES (1, 'Dr. Seuss', 'Theodor Seuss Geisel was an American children author and cartoonist. He is known for his work writing and illustrating more than 60 books under the pen name Dr. Seuss');
INSERT INTO bookstore.Authors (AuthorID, Name, Bio) VALUES (2, 'William Shakespeare', 'William Shakespeare was an English playwright, poet and actor. He is widely regarded as the greatest writer in the English language and the worlds pre-eminent dramatist. He is often called Englands national poet and the "Bard of Avon"');
INSERT INTO bookstore.Authors (AuthorID, Name, Bio) VALUES (3, 'J.K. Rowling', 'Joanne Rowling CH OBE FRSL, better known by her pen name J. K. Rowling, is a British author and philanthropist. She wrote Harry Potter, a seven-volume fantasy series published from 1997 to 2007');
INSERT INTO bookstore.Authors (AuthorID, Name, Bio) VALUES (4, 'Stephen Edwin King', 'Stephen Edwin King is an American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels. Called the "King of Horror", his books have sold more than 350 million copies as of 2006, and many have been adapted into films, television series, miniseries, and comic books.');
INSERT INTO bookstore.Authors (AuthorID, Name, Bio) VALUES (5, 'Fyodor Dostoevsky', 'Fyodor Mikhailovich Dostoevsky, sometimes transliterated as Dostoyevsky, was a Russian novelist, short story writer, essayist and journalist. Numerous literary critics regard him as one of the greatest novelists in all of world literature, as many of his works are considered highly influential masterpieces');
INSERT INTO bookstore.Authors (AuthorID, Name, Bio) VALUES (6, 'Friedrich Nietzsche', 'Friedrich Wilhelm Nietzsche was a German philosopher. He began his career as a classical philologist before turning to philosophy');

INSERT INTO bookstore.Categories (CategoryID, CategoryName) VALUES (1, 'Fiction');
INSERT INTO bookstore.Categories (CategoryID, CategoryName) VALUES (2, 'Non-Fiction');
INSERT INTO bookstore.Categories (CategoryID, CategoryName) VALUES (3, 'Science Fiction');
INSERT INTO bookstore.Categories (CategoryID, CategoryName) VALUES (4, 'Fantasy');

-- Inserting books for Dr. Seuss (AuthorID = 1)
INSERT INTO bookstore.Books (BookID, BookID, Title, AuthorID, CategoryID, Price, StockQuantity) VALUES (1, 'The Cat in the Hat', 1, 4, 6.99, 30); --  "Fantasy" Category
INSERT INTO bookstore.Books (BookID, BookID, Title, AuthorID, CategoryID, Price, StockQuantity) VALUES (2, 'Green Eggs and Ham', 1, 4, 5.99, 40); -- "Fantasy" Category

-- Inserting books for William Shakespeare (AuthorID = 2)
INSERT INTO bookstore.Books (BookID, BookID, Title, AuthorID, CategoryID, Price, StockQuantity) VALUES (3, 'Hamlet', 2, 1, 9.99, 20); -- "Fiction" Category
INSERT INTO bookstore.Books (BookID, Title, AuthorID, CategoryID, Price, StockQuantity) VALUES (4, 'Macbeth', 2, 1, 8.99, 25); -- "Fiction" Category

-- Inserting books for J.K. Rowling (AuthorID = 3)
INSERT INTO bookstore.Books (BookID, Title, AuthorID, CategoryID, Price, StockQuantity) VALUES (5, 'Harry Potter and the Sorcerer''s Stone', 3, 4, 12.99, 50); -- "Fantasy" Category
INSERT INTO bookstore.Books (BookID, Title, AuthorID, CategoryID, Price, StockQuantity) VALUES (6, 'Harry Potter and the Chamber of Secrets', 3, 4, 13.99, 50); -- "Fantasy" Category

-- Inserting books for Stephen King (AuthorID = 4)
INSERT INTO bookstore.Books (BookID, Title, AuthorID, CategoryID, Price, StockQuantity) VALUES (7, 'The Shining', 4, 3, 15.99, 30); -- "Science Fiction" Category
INSERT INTO bookstore.Books (BookID, Title, AuthorID, CategoryID, Price, StockQuantity) VALUES (8, 'It', 4, 3, 17.99, 40); -- "Science Fiction" Category

-- Inserting books for Fyodor Dostoevsky (AuthorID = 5)
INSERT INTO bookstore.Books (BookID, Title, AuthorID, CategoryID, Price, StockQuantity) VALUES (9, 'Crime and Punishment', 5, 1, 14.99, 35); -- "Fiction" Category
INSERT INTO bookstore.Books (BookID, Title, AuthorID, CategoryID, Price, StockQuantity) VALUES (10, 'The Brothers Karamazov', 5, 1, 18.99, 30); -- "Fiction" Category

-- Inserting books for Friedrich Nietzsche (AuthorID = 6)
INSERT INTO bookstore.Books (BookID, Title, AuthorID, CategoryID, Price, StockQuantity) VALUES (11, 'Thus Spoke Zarathustra', 6, 2, 11.99, 25); -- "Non-Fiction" Category
INSERT INTO bookstore.Books (BookID, Title, AuthorID, CategoryID, Price, StockQuantity) VALUES (12, 'Beyond Good and Evil', 6, 2, 10.99, 20); -- "Non-Fiction" Category

-- Customers 
INSERT INTO bookstore.Customers (CustomerID, Name, Email, Address) VALUES (1, 'Ishan Choongh', 'cishanvir@gmail.com', '2469 Robson St, Vancouver, Canada');
INSERT INTO bookstore.Customers (CustomerID, Name, Email, Address) VALUES (2, 'John Doe', 'john.doe@example.com', '123 Main St, Anytown, USA');
INSERT INTO bookstore.Customers (CustomerID, Name, Email, Address) VALUES (3, 'Jane Smith', 'jane.smith@example.com', '456 Oak St, Othertown, USA');
INSERT INTO bookstore.Customers (CustomerID, Name, Email, Address) VALUES (4, 'Alice Johnson', 'alice.johnson@example.com', '789 Pine St, Sometown, USA');
INSERT INTO bookstore.Customers (CustomerID, Name, Email, Address) VALUES (5, 'Bob Brown', 'bob.brown@example.com', '101 Maple Ave, New City, USA');
INSERT INTO bookstore.Customers (CustomerID, Name, Email, Address) VALUES (6, 'Carol White', 'carol.white@example.com', '202 Elm St, Oldtown, USA');

-- Sample Orders
INSERT INTO bookstore.Orders (OrderID, CustomerID, BookID, OrderDate, Quantity) VALUES (1, 1, 9, '2024-01-01', 5); -- Ishan Choongh orders BookID 9
INSERT INTO bookstore.Orders (OrderID, CustomerID, BookID, OrderDate, Quantity) VALUES (2, 2, 1, '2023-04-25', 2); -- John Doe orders BookID 1
INSERT INTO bookstore.Orders (OrderID, CustomerID, BookID, OrderDate, Quantity) VALUES (3, 2, 3, '2024-11-14', 4); -- John Doe orders 2 copies of BookID 3
INSERT INTO bookstore.Orders (OrderID, CustomerID, BookID, OrderDate, Quantity) VALUES (4, 3, 2, '2022-08-30', 1); -- Jane Smith orders BookID 2
INSERT INTO bookstore.Orders (OrderID, CustomerID, BookID, OrderDate, Quantity) VALUES (5, 4, 4, '2024-02-05', 1); -- Alice Johnson orders BookID 4
INSERT INTO bookstore.Orders (OrderID, CustomerID, BookID, OrderDate, Quantity) VALUES (6, 5, 1, '2003-11-10', 10); -- Bob Brown orders 10 copies of BookID 1

-- QUERIES 

USE bookstore;
-- List all books in a particular category:
SELECT Title FROM Books WHERE CategoryID = 1;
SELECT Title FROM Books WHERE CategoryID = 2;
SELECT Title FROM Books WHERE CategoryID = 3;
SELECT Title FROM Books WHERE CategoryID = 4;

-- Total number of books sold per author:
SELECT a.Name, SUM(o.Quantity) AS TotalBooksSold
FROM Orders o
JOIN Books b ON o.BookID = b.BookID
JOIN Authors a ON b.AuthorID = a.AuthorID
GROUP BY a.Name;

-- Update Stock quantity after a book is ordered:
UPDATE Books SET StockQuantity = StockQuantity - OrderedQuantity
WHERE BookID = OrderedBookID;

-- List Customers who have made more than 5 Orders:
SELECT c.Name 
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.Name
HAVING COUNT(o.OrderID) > 5;

-- Most Popular book category:
SELECT CategoryID, COUNT(*) AS TotalOrders
FROM Orders o
JOIN Books b ON o.BookID = b.BookID
GROUP BY CategoryID
ORDER BY TotalOrders DESC
LIMIT 1;
