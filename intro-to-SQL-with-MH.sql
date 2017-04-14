--Introduction to SQL with Music History


--Query all of the entries in the Genre table
select * from genre;

-- Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO ARTIST VALUES (null, 'The Black Keys', 1996);

-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO ALBUM VALUES (null, "Attack and Release", "04/01/08", 2240, "V2 Records", 28, 2);

--Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO SONG VALUES (null, "I Got Mine", 175, "04/01/08", 2, 28, 23);
INSERT INTO SONG VALUES (null, "Remember When (Side A)", 201, "04/01/08", 2, 28, 23);   
INSERT INTO SONG VALUES(null, "So He Won't Break",  253, "04/01/08", 2, 28, 23);    

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
select a.artistName as Artist, b.title as Album, s.title as Song FROM Artist a LEFT JOIN Album b on a.artistId=b.artistId  LEFT JOIN Song s on a.ArtistId = s.ArtistId and b.albumId = s.albumid WHERE a.ArtistName = "The Black Keys";
 
 -- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
 select album.title as AlbumTitle, count(song.albumid) as songcount from song left join album where album.albumid = song.albumid group by song.albumid; 
 
 -- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
 select artist.artistname as "Artist Name", count(song.songid) as "Number of Songs" from Artist left join Song where artist.artistid = song.artistid group by song.artistId ; 
 
 -- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
select genre.label as "Genre", count(song.genreid) as "number of songs per genre"  from  song left join genre where song.genreid = genre.genreid group by genre.label;
 
 -- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
select Album.title as Album, max(album.albumlength) from album; 

-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
select song.title as "Song Title", max(song.songlength) as "Song Length" from song; 

 -- Modify the previous query to also display the title of the album.
 select song.title as "Song Title", max(song.songlength) as "Song Length", artist.artistname from song left join artist;

 

 