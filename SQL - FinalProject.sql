"SQL FINAL PROJECT"
"Create Table for Authors"
CREATE TABLE sakila.Authors(
	AuthorID INTEGER PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(30) NOT NULL,
    BirthCountry VARCHAR(40) NOT NULL
    )
"Insert authors info"
INSERT INTO sakila.Authors (FullName,BirthCountry)
Values
("Jane Austen", "England"),
("Charles Dickens", "England"),
("Mark Twain", "United States")

"View newly inserted info"
SELECT * FROM sakila.Authors

"PART 2"
"Create Table for Books"
CREATE TABLE Books(
	BookID INTEGER PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(60) NOT NULL,
     AuthorID INTEGER,
    FOREIGN KEY(AuthorID) REFERENCES Authors(AuthorID)
    )

"Insert book info"
INSERT INTO sakila.Books (Name, AuthorID)
Values
("Pride and Prejudice",1),
("Sense and Sensibility",1),
("The Pickwick Papers",2)


"View newly inserted info into Books"
SELECT * FROM sakila.Books

"PART 3"
"Query Merging Books and Authors Together"
SELECT * FROM authors
JOIN books USING(AuthorID)
ORDER BY FullName

"Showing Only Authors Name and Book Name "
SELECT FullName AS AuthorName, Name AS BookName FROM authors
JOIN books USING(AuthorID)
ORDER BY FullName