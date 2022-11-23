CREATE TABLE artist (
	aid INT PRIMARY KEY,
    fname VARCHAR(30),
    lname VARCHAR(30),
    dob DATE,
    gender VARCHAR(1)
);

CREATE TABLE band (
	bid INT PRIMARY KEY,
    name VARCHAR(30),
    year_formed INT
);

CREATE TABLE in_band (
	aid INT,
    bid INT,
    date_in DATE,
    date_out DATE,
    FOREIGN KEY(aid) REFERENCES artist(aid) ON DELETE SET NULL,
    FOREIGN KEY(bid) REFERENCES band(bid) ON DELETE SET NULL
);

CREATE TABLE album (
		albumid INT PRIMARY KEY, 
        published_year INT,
        title VARCHAR(30),
        price INT,
        publisher VARCHAR(30),
        format VARCHAR(30),
        bid INT,
        FOREIGN KEY(bid) REFERENCES band(bid) ON DELETE SET NULL
);

DESCRIBE album;