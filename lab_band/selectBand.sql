#1
SELECT band.name, CONCAT(artist.fname, ' ', artist.lname) AS fullname
FROM artist, band, in_band
WHERE artist.aid = in_band.aid
	AND band.bid = in_band.bid
	AND band.name = 'Avenged Sevenfold'
    AND 2003 BETWEEN YEAR(in_band.date_in) AND 2022;
    
    
#2
SELECT band.name, CONCAT(artist.fname, ' ', artist.lname) AS fullname
FROM band, artist, album, in_band
WHERE band.bid = in_band.bid
	AND band.bid = album.bid
	AND artist.aid = in_band.aid
    AND album.title = 'Hour Long Shower';
    
#3
SELECT CONCAT(artist.fname, ' ' , artist.lname) AS full_name,
		artist.gender,
        DATE_FORMAT(artist.dob, '%M %D %Y') AS dob,
        band.name, 
        DATEDIFF(CURDATE(), artist.dob)/365 AS age
FROM artist, band, in_band
WHERE (artist.aid = in_band.aid
	AND band.bid = in_band.bid)
    AND (artist.gender = 'f' OR DATEDIFF(CURDATE(), artist.dob)/365 >= 21);

SELECT * FROM in_band;