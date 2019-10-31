create Database Stock_Database
use Stock_Database
CREATE TABLE StockDetails (
Company_name varchar(20) NOT NULL PRIMARY KEY,
InstrumentName varchar(50), 
MarketCap int,
ISEQWeighting varchar(20),
DescriptionStockDetails varchar(50),
Website varchar(50),
DepartmentDetails varchar(50)
);

CREATE TABLE ISEQOverallHistorical (
ISEQ_ID int NOT NULL PRIMARY KEY,
Date_ISEQ date, 
Price_ISEQ int,
Open_ISEQ int,
High_ISEQ int,
Low_ISEQ int,
Volume_ISEQ int,
ChangePercent_ISEQ int
);

CREATE TABLE StockHistorical (
Historical_ID int NOT NULL PRIMARY KEY,
Company_name varchar(20),
Date_Stock date, 
Open_Stock int,
High_Stock int,
Low_Stock int,
Close_Stock int,
AdjClose_Stock int,
Volume_Stock int,
FOREIGN KEY (Company_name) REFERENCES StockDetails(Company_name)
);

Create Database ISEData;
use ISEData
use Stock_Database
CREATE TABLE IrishTimesAllStockNews (
News_ID int NOT NULL PRIMARY KEY,
Company_name_News varchar(20),
Date_News date, 
Headline_News varchar(50),
Description_News varchar(50),
Historical_ID_News int,
FOREIGN KEY (Company_name_News) REFERENCES StockDetails(Company_name),
FOREIGN KEY (Historical_ID_News) REFERENCES StockHistorical(Historical_ID),
);


CREATE TABLE IrishTimesPolitical (
Political_ID int NOT NULL PRIMARY KEY,
Name_political varchar(20),
Date_Political date, 
Headline_Political varchar(50),
Description_Political varchar(50),
Historical_ID_Political int,
ISEQ_ID_Political int,
FOREIGN KEY (ISEQ_ID_Political) REFERENCES ISEQOverallHistorical(ISEQ_ID),
FOREIGN KEY (Historical_ID_Political) REFERENCES StockHistorical(Historical_ID),
);
drop table IrishTimesPolitical

CREATE TABLE IrishTimesEconomical (
Economical_ID int NOT NULL PRIMARY KEY,
Name_Economical varchar(20),
Date_Economical date, 
Headline_Economical varchar(50),
Description_Economical varchar(50),
Historical_ID_Economical int,
ISEQ_ID_Economical int,
FOREIGN KEY (ISEQ_ID_Economical) REFERENCES ISEQOverallHistorical(ISEQ_ID),
FOREIGN KEY (Historical_ID_Economical) REFERENCES StockHistorical(Historical_ID),
);

CREATE TABLE IrishTimesSocial (
Social_ID int NOT NULL PRIMARY KEY,
Name_Social varchar(20),
Date_Social date, 
Headline_Social varchar(50),
Description_Social varchar(50),
Historical_ID_Social int,
ISEQ_ID_Social int,
FOREIGN KEY (ISEQ_ID_Social) REFERENCES ISEQOverallHistorical(ISEQ_ID),
FOREIGN KEY (Historical_ID_Social) REFERENCES StockHistorical(Historical_ID),
);

CREATE TABLE IrishTimesTech (
Tech_ID int NOT NULL PRIMARY KEY,
Name_Tech varchar(20),
Date_Tech date, 
Headline_Tech varchar(50),
Description_Tech varchar(50),
Historical_ID_Tech int,
ISEQ_ID_Tech int,
FOREIGN KEY (ISEQ_ID_Tech) REFERENCES ISEQOverallHistorical(ISEQ_ID),
FOREIGN KEY (Historical_ID_Tech) REFERENCES StockHistorical(Historical_ID),
);

CREATE TABLE IrishTimesEnvior (
Envior_ID int NOT NULL PRIMARY KEY,
Envior_Tech varchar(20),
Date_Envior date, 
Headline_Envior varchar(50),
Description_Envior varchar(50),
Historical_ID_Envior int,
ISEQ_ID_Envior int,
FOREIGN KEY (ISEQ_ID_Envior) REFERENCES ISEQOverallHistorical(ISEQ_ID),
FOREIGN KEY (Historical_ID_Envior) REFERENCES StockHistorical(Historical_ID),
);

CREATE TABLE IrishTimesLegal (
Legal_ID int NOT NULL PRIMARY KEY,
Legal_Tech varchar(20),
Date_Legal date, 
Headline_Legal varchar(50),
Description_Legal varchar(50),
Historical_ID_Legal int,
ISEQ_ID_Legal int,
FOREIGN KEY (ISEQ_ID_Legal) REFERENCES ISEQOverallHistorical(ISEQ_ID),
FOREIGN KEY (Historical_ID_Legal) REFERENCES StockHistorical(Historical_ID),
);

