CREATE TABLE "Meter_Combo" (
    "Well_Name" VARCHAR   NOT NULL,
    "Meter_ID" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Meter_Combo" PRIMARY KEY (
        "Meter_ID"
     )
);

CREATE TABLE "scada_data" (
    "Well_Name" VARCHAR   NOT NULL,
    "Date" DATE   NOT NULL,
    "Yesterdays_Gas_Production_(Mcf)" DECIMAL   NOT NULL,
    "Meter_ID" VARCHAR  NOT NULL,
	CONSTRAINT "pk_scada_data" PRIMARY KEY (
        "Meter_ID"
		)
);

CREATE TABLE "prams_data" (
    "Date" DATE   NOT NULL,
    "Well_Name" VARCHAR   NOT NULL,
    "Total_Gas_Production_(Mcf)" DECIMAL   NOT NULL,
    CONSTRAINT "pk_prams_data" PRIMARY KEY (
        "Well_Name"
     )
);

CREATE TABLE "gas_prices" (
    "Week_Of" DATE   NOT NULL,
    "Avg_US_Gas_Price_($/Gal)" DECIMAL   NOT NULL,
    CONSTRAINT "pk_gas_prices" PRIMARY KEY (
        "Week_Of"
     )
);

ALTER TABLE "scada_data" ADD CONSTRAINT "fk_scada_data_Well_Name" FOREIGN KEY("Well_Name")
REFERENCES "prams_data" ("Well_Name");

ALTER TABLE "scada_data" ADD CONSTRAINT "fk_scada_data_Date" FOREIGN KEY("Date")
REFERENCES "gas_prices" ("Week_Of");

ALTER TABLE "scada_data" ADD CONSTRAINT "fk_scada_data_Meter_ID" FOREIGN KEY("Meter_ID")
REFERENCES "Meter_Combo" ("Meter_ID");

