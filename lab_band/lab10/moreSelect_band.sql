#1
SELECT band.name
FROM band
WHERE NOT EXISTS (
	SELECT * 
    FROM in_band, artist
    WHERE artist.aid = in_band.aid
		AND band.bid = in_band.bid
		AND artist.gender = 'f'
	);
    
#2
SELECT CONCAT(artist.fname, ' ' , artist.lname) AS fullname, TRUNCATE(DATEDIFF(CURDATE(), artist.dob)/365, 0) AS age, band.name AS bandname
FROM artist, band, in_band
WHERE artist.aid = in_band.aid
	AND band.bid = in_band.bid
    AND artist.gender = 'f'
    AND EXISTS (
		SELECT *
        FROM album
        WHERE band.bid = album.bid
        HAVING COUNT(album.albumid) >= 2
	);
    
#3
SELECT CONCAT(artist.fname,' ',artist.lname) AS fullname, band.name,
	DATE_FORMAT(IFNULL(in_band.date_out, CURDATE()),'%Y') - DATE_FORMAT(in_band.date_in,'%Y') AS duration
FROM in_band, artist, band
WHERE artist.aid=in_band.aid AND band.bid=in_band.bid;
