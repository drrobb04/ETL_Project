-- Create meters table
CREATE TABLE meters (
	Well Name VARCHAR not null,
	Meter ID VARCHAR not null,
	PRIMARY KEY ()
);

-- Create scada table
CREATE TABLE scada (
	Well Name TEXT not null,
	Date DATE not null,
	Yesterdays Gas Production (Mcf) DECIMAL not null,
	Meter ID VARCHAR not null,
	PRIMARY KEY ()
);

-- Create prams table
CREATE TABLE prams (
	Date DATE not null,
	Well Name VARCHAR not null,
	Total Gas Production (Mcf) DECIMAL not null,
	PRIMARY KEY ()
);

-- Create gas_prices table
CREATE TABLE gas_prices(
	Week Of DATE not null,
	Avg US Gas Price ($/Gal) DECIMAL not null,
	PRIMARY KEY
);