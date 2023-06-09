-- I decided to take all of the books on my bookshelf and create a database made up of the different values. 



CREATE TABLE books (
id INTEGER PRIMARY KEY auto_increment,
title TEXT,
author TEXT,
genre TEXT,
rating INTEGER
)



INSERT INTO books (title, author, genre, rating)VALUES ("Beautiful Creatures", "Kami Garcia", "Young Adult", 4);

INSERT INTO books (title, author, genre, rating) VALUES ("The Assasins Blade", "Sarah J Maas", "Young Adult", 5);

INSERT INTO books (title, author, genre, rating) VALUES ("Hush Hush", "Becca Fitzpatrick", "Paranormal", 3);

INSERT INTO books (title, author, genre, rating) VALUES ("Throne of Glass", "Sarah J Maas", "Young Adult", 5);

INSERT INTO books (title, author, genre, rating) VALUES ("Silence",  "Becca Fitzpatrick", "Paranormal", 4);

INSERT INTO books (title, author, genre, rating) VALUES ("Crown of Midnight", "Sarah J Maas", "Young Adult", 4);

INSERT INTO books (title, author, genre, rating) VALUES ("Queen of Shadows", "Sarah J Maas", "Young Adult", 4);

INSERT INTO books (title, author, genre, rating) VALUES ("Heir of Fire", "Sarah J Maas", "Young Adult", 5);

INSERT INTO books (title, author, genre, rating) VALUES ("Queen of Shadows", "Sarah J Maas", "Young Adult", 5);

INSERT INTO books (title, author, genre, rating) VALUES ("Empire of Storms", "Sarah J Maas", "Young Adult", 4);

INSERT INTO books (title, author, genre, rating) VALUES ("Tower of Dawn", "Sarah J Maas", "Young Adult", 4);

INSERT INTO books (title, author, genre, rating) VALUES ("Kingdom of Ash", "Sarah J Maas", "Young Adult", 5);

INSERT INTO books (title, author, genre, rating) VALUES ("Crescendo", "Becca Fitzpatrick", "Paranormal", 3);

INSERT INTO books (title, author, genre, rating) VALUES ("Finale", "Becca Fitzpatrick", "Paranormal", 5);

INSERT INTO books (title, author, genre, rating) VALUES ("Beautiful Darkness", "Kami Garcia", "Young Adult", 3);

INSERT INTO books (title, author, genre, rating) VALUES ("Beautiful Chaos", "Kami Garcia", "Young Adult", 4);

INSERT INTO books (title, author, genre, rating) VALUES ("Beautiful Redemption", "Kami Garcia", "Young Adult", 5);

SELECT *
FROM books;


--What is the average rating of books by Sarah J Maas?

SELECT AVG(rating)
FROM books
WHERE author = "Sarah J Maas"

	--Result populated: 4.5556





--What is the total number of books in the database written by Becca Fitzpatrick?


SELECT COUNT(title) FROM books WHERE author = "Becca Fitzpatrick"

	--result populated:4
    
    
    
    
    --Find all books with a rating higher than 3
    
    SELECT title, author 
    FROM books
    WHERE rating >3
    
    
    
    -- A customer asks for books that fall under the Young Adult genre. 
    
SELECT title, author 
    FROM books
    WHERE genre = "Young Adult"
    
    
    
    -- Some books are being donated. You're told to find the books with ratings less than 4. 
    SELECT title, author 
    FROM books
    WHERE rating < 4
    
    
    
    -- Find books with 'beautiful' in the title.
    
    SELECT title, author
    FROM books
	WHERE title LIKE '%beautiful%'
    
    
    --Youre asked to find all of the books written by Sarah J Maas
    
    SELECT title
    FROM books 
    WHERE author = "Sarah J Maas"
    
    
    --What is avg rating of the books written by Kami Garcia?
    
SELECT AVG(rating)
FROM books
WHERE author = "Kami Garcia"

	--result: 4
    
    
    --Avg rating of ALL books in database?
    
  SELECT AVG(rating)
FROM books

	--result: 4.2353
    
    
