INSERT INTO band VALUES (1, 'Avenged Sevenfold', 1999);

INSERT INTO artist VALUES(1, 'M', 'Shadows', '1981-07-31', 'M');
INSERT INTO artist VALUES(2, 'Synster', 'Gates', '1981-07-07', 'M');
INSERT INTO artist VALUES(3, 'Johnny', 'Christ', '1984-11-18', 'M');

INSERT INTO band VALUES (2, 'Roxy Rocks', 2022);

INSERT INTO artist VALUES (4, 'Roxy', 'Boxy', '2022-03-22', 'F');

INSERT INTO band VALUES (3, 'Roxy and Foxy', 2023);

INSERT INTO artist VALUES (5, 'Foxy', 'Loxy', '2022-03-15', 'F');

INSERT INTO band VALUES (4, 'Johnny Cash', 1957);
INSERT INTO artist VALUES (6, 'Johnny', 'Cash', '1932-02-26', 'M');

INSERT INTO band VALUES (5, 'Event Horizon', 2014);
INSERT INTO artist VALUES (7, 'David', 'Hume', '1998-06-20', 'M');

INSERT INTO in_band VALUES (1, 1, '1999-03-01', NULL);
INSERT INTO in_band VALUES (2, 1, '1999-03-01', NULL);
INSERT INTO in_band VALUES (3, 1, '1999-03-01', NULL);

INSERT INTO in_band VALUES (4, 2, '2022-05-19', NULL);

INSERT INTO in_band VALUES (4, 3, '2023-01-11', '2023-01-12');
INSERT INTO in_band VALUES (5, 3, '2023-01-11', NULL);

INSERT INTO in_band VALUES (6, 4, '1957-07-01', '2003-09-12');

INSERT INTO in_band VALUES (7, 5, '2014-02-14', '2016-06-11');

# (albumid, published_year, title, price, publisher, format, bid)
INSERT INTO album VALUES (1, 2014, 'Hour Long Shower', 5, 'Sharptone', 'Digital', 5);

INSERT INTO album VALUES (2, 1958, 'The Fabulous Johnny Cash', 1, 'Columbia', 'Record', 4);

INSERT INTO album VALUES (3, 2023, 'With a Litlle Loxy', 100, 'Rox Records', 'Digital', 3);
INSERT INTO album VALUES (4, 2023, 'With a Litlle More Loxy', 1000, 'Rox Records', 'Digital', 3);
INSERT INTO album VALUES (5, 2023, 'You Heard It, More Loxy', 10000, 'Rox Records', 'Digital', 3);

INSERT INTO album VALUES (6, 2022, 'Roxy With Me', 13, 'Rox Records', 'Digital', 2);

INSERT INTO album VALUES (7, 2016, 'The Stage', 25, 'Capitol', 'Compact Disk', 1);
INSERT INTO album VALUES (8, 2013, 'Hail to the King', 25, 'Warner Bros', 'Compact Disk', 1);
INSERT INTO album VALUES (9, 2010, 'Nightmare', 20, 'Warner Bros', 'Compact Disk', 1);
