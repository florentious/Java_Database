CREATE TABLE dowjones (
	dj_date DATE PRIMARY KEY,
	dj_close DOUBLE,
	dj_open DOUBLE,
	dj_high DOUBLE,
	dj_low DOUBLE,
	dj_volume DOUBLE

);

SELECT * FROM dowjones;

CREATE TABLE gold (
	gold_date DATE PRIMARY KEY,
	gold_close DOUBLE,
	gold_open DOUBLE,
	gold_high DOUBLE,
	gold_low DOUBLE,
	gold_volume DOUBLE
 
);

SELECT * FROM gold ORDER BY gold_date desc;

CREATE TABLE bitcoin (
	bit_date DATE PRIMARY KEY,
	bit_close DOUBLE,
	bit_open DOUBLE,
	bit_high DOUBLE,
	bit_low DOUBLE,
	bit_volume DOUBLE
 
);

SELECT * FROM bitcoin;

CREATE TABLE ether (
	eth_date DATE PRIMARY KEY,
	eth_close DOUBLE,
	eth_open DOUBLE,
	eth_high DOUBLE,
	eth_low DOUBLE,
	eth_volume DOUBLE
 
);

SELECT * FROM bitcoin

SELECT * FROM ether ORDER BY eth_date desc;

DELETE FROM ether;
