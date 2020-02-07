CREATE TABLE dowjones (
	dj_date DATE PRIMARY KEY,
	dj_close DOUBLE,
	dj_open DOUBLE,
	dj_high DOUBLE,
	dj_low DOUBLE,
	dj_volume DOUBLE

);

CREATE TABLE gold (
	gold_date DATE PRIMARY KEY,
	gold_close DOUBLE,
	gold_open DOUBLE,
	gold_high DOUBLE,
	gold_low DOUBLE,
	gold_volume DOUBLE
 
);

CREATE TABLE bitcoin (
	bit_date DATE PRIMARY KEY,
	bit_close DOUBLE,
	bit_open DOUBLE,
	bit_high DOUBLE,
	bit_low DOUBLE,
	bit_volume DOUBLE
 
);


CREATE TABLE ether (
	eth_date DATE PRIMARY KEY,
	eth_close DOUBLE,
	eth_open DOUBLE,
	eth_high DOUBLE,
	eth_low DOUBLE,
	eth_volume DOUBLE
 
);

CREATE TABLE al_close (
	cl_date DATE PRIMARY KEY,
	cl_bitcoin DOUBLE,
	cl_gold DOUBLE,
	cl_dowjones double
	

);

CREATE TABLE makedData (
	md_date DATE PRIMARY KEY,
	
	md_bit_close DOUBLE,
	md_bit_ma5 DOUBLE,
	md_bit_ma60 DOUBLE,
	md_bit_dif DOUBLE,
	md_bit_dif_b1 DOUBLE,
	
	md_gol_close DOUBLE,
	md_gol_ma5 DOUBLE,
	md_gol_ma60 DOUBLE,
	md_gol_dif DOUBLE,
	md_gol_dif_b1 DOUBLE,
	
	
	md_dj_close DOUBLE,
	md_dj_ma5 DOUBLE,
	md_dj_ma60 DOUBLE,
	md_dj_dif DOUBLE,
	md_dj_dif_b1 DOUBLE,
	
	md_bit_change INT,
	md_gol_change INT,
	md_dj_change int
	
);

CREATE TABLE pred_clf (
	pc_date DATE PRIMARY KEY,
	
	pc_bit_arima DOUBLE,
	pc_gol_arima DOUBLE,
	pc_dj_arima DOUBLE,
	
	pc_bit_vote INT,
	pc_bit_knc INT,
	pc_bit_svc INT,
	pc_bit_rfc INT,
	pc_bit_xgbc INT,
	pc_bit_lgbc INT,
	
	pc_gol_vote INT,
	pc_gol_knc INT,
	pc_gol_svc INT,
	pc_gol_rfc INT,
	pc_gol_xgbc INT,
	pc_gol_lgbc INT,
	
	pc_dj_vote INT,
	pc_dj_knc INT,
	pc_dj_svc INT,
	pc_dj_rfc INT,
	pc_dj_xgbc INT,
	pc_dj_lgbc INT
	

);

SELECT * FROM makedData ORDER BY md_date DESC;

SELECT * FROM pred_clf;

SELECT * FROM pred_clf ORDER BY pc_date DESC LIMIT 0,1;

SELECT IFNULL(MAX(md_date),"2013-01-01") FROM makedData
