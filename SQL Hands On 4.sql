-- Hands on Lesson 4 - Creating Tables
-- Part 1
#Create a View
CREATE VIEW sakila.initialCustomers AS
SELECT first_name, last_name, email 
FROM sakila.customer
WHERE (customer_id < 100);

SELECT * FROM sakila.initialCustomers


-- PART 2
-- Create a table named "ProductList"
CREATE TABLE sakila.ProductList (
ProductId INTEGER PRIMARY KEY AUTO_INCREMENT,
ProductName VARCHAR(50) NOT NULL,
Price NUMERIC(4,2) NOT NULL,
DateAdded DATETIME DEFAULT CURRENT_TIMESTAMP,
EmployeeSupportId INTEGER NOT NULL
)

INSERT INTO sakila.ProductList(ProductName, Price, EmployeeSupportID) 
values("DVD", "10.99", "1991")

INSERT INTO sakila.ProductList(ProductName, Price, EmployeeSupportID) 
values("Stream", "15.99", "1991")

SELECT * FROM sakila.ProductList