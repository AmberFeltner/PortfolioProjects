CREATE TABLE songs (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title TEXT,
    artist TEXT,
    mood TEXT,
    duration INTEGER,
    released INTEGER);
    
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Bohemian Rhapsody", "Queen", "epic", 60, 1975);
    
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Let it go", "Idina Menzel", "epic", 227, 2013);
    
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will survive", "Gloria Gaynor", "epic", 198, 1978);
    
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Twist and Shout", "The Beatles", "happy", 152, 1963);
    
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("La Bamba", "Ritchie Valens", "happy", 166, 1958);
    
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will always love you", "Whitney Houston", "epic", 273, 1992);
    
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Sweet Caroline", "Neil Diamond", "happy", 201, 1969);
    
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Call me maybe", "Carly Rae Jepsen", "happy", 193, 2011);
    
--Find the title names of all available songs.
    
SELECT title 
FROM songs;

--You want to find an epic song, maybe something released after 1990.

SELECT title 
FROM songs 
WHERE mood = "epic" OR released > 1990;

--You want a song that is epic AND released after 1990 AND less than 240 seconds. 

SELECT title 
FROM songs 
WHERE mood = "epic" AND released > 1990 AND duration<240;

--Youve sung your epic song, now find a list of happy songs. 

SELECT title 
FROM songs
WHERE mood = "happy";

--You cant quite remember the name of the artist who sings "Call me maybe" 

SELECT artist 
FROM songs
WHERE title = "Call me maybe";

--You want a list of all the titles where duration is in descending order. 

SELECT title, duration
FROM songs
ORDER BY duration DESC;

--The Karaoke bar is clearing out all songs by Whitney Houston because she reminds him of his ex wife. Take out any WH songs

DELETE FROM songs
WHERE artist = "Whitney Houston";

--Double checking to see if delete was successful 
SELECT * 
FROM songs;

--Youve decided you want to change the mood of "I will survive" from epic to overplayed. 

    UPDATE songs
    SET mood = "overplayed"
    WHERE title = "I will survive";
    
--Double check to see if update was successful

 SELECT title, mood
 FROM songs;
 
 --Find out the song with the longest duration. 
 
 SELECT  MAX(duration)
 FROM songs;
 
 --result 227
 
 SELECT title
FROM songs 
WHERE duration = 227;

--result "Let it go"

--Find the avg duration of all the songs in the database


SELECT AVG(duration) AS average_duration
FROM songs;

--result 171 seconds

 