/* We've created a table with songs, and in this challenge, you'll use queries to decide what songs to sing. */

CREATE TABLE song (
    id INTEGER PRIMARY KEY,
    title TEXT,
    artist TEXT,
    mood TEXT,
    duration INTEGER,
    released INTEGER);

INSERT INTO song (id,title, artist, mood, duration, released)
    VALUES (1,'Bohemian Rhapsody', 'Queen', 'epic', 60, 1975);
INSERT INTO song (id,title, artist, mood, duration, released)
    VALUES (2,'Let it go', 'Idina Menzel', 'epic', 227, 2013);
INSERT INTO song (id,title, artist, mood, duration, released)
    VALUES (3,'I will survive', 'Gloria Gaynor', 'epic', 198, 1978);
INSERT INTO song (id,title, artist, mood, duration, released)
    VALUES (4,'Twist and Shout', 'The Beatles', 'happy', 152, 1963);
INSERT INTO song (id,title, artist, mood, duration, released)
    VALUES (5,'La Bamba', 'Ritchie Valens', 'happy', 166, 1958);
INSERT INTO song (id,title, artist, mood, duration, released)
    VALUES (6,'I will always love you', 'Whitney Houston', 'epic', 273, 1992);
INSERT INTO song (id,title, artist, mood, duration, released)
    VALUES (7,'Sweet Caroline', 'Neil Diamond', 'happy', 201, 1969);
INSERT INTO song (id,title, artist, mood, duration, released)
    VALUES (8,'Call me maybe', 'Carly Rae Jepsen', 'happy', 193, 2011);
    
/*Select all the song titles.*/
select * from song;
SELECT title FROM song;

 /*Show the titles of the songs that have an 'epic' mood or a release date after 1990.*/

 SELECT title FROM song WHERE mood = 'epic' OR released > 1990;

/*Show the titles of songs that are 'epic', and released after 1990, and less than 4 minutes long.
Note that the duration column is measured in seconds.*/

 SELECT title FROM song WHERE mood = 'epic' AND released > 1990 AND duration < 240;