USE codeup_test_db;

SELECT * FROM albums;

SELECT id, artist From albums
WHERE release_date < 1980;

SELECT id,name FROM albums
WHERE artist = 'pink floyd';

SELECT release_date FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre FROM albums
WHERE name = 'Nevermind';

SELECT * FROM albums
WHERE release_date >= 1990 && albums.release_date < 2000;

SELECT * FROM albums
WHERE sales < 21;

SELECT * FROM albums
WHERE albums.genre = "Rock";

DROP TABLE IF EXISTS artists;