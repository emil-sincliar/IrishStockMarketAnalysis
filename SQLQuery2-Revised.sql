CREATE DATABASE StockPrediction_DS
GO
USE StockPrediction_DS
GO
CREATE TABLE ISEQOverallHistorical (
ISEQ_ID int NOT NULL,
Date_ISEQ date, 
Price_ISEQ int,
Open_ISEQ int,
High_ISEQ int,
Low_ISEQ int,
Volume_ISEQ int,
ChangePercent_ISEQ decimal (3,2),
CONSTRAINT pk_ISEQ_ID PRIMARY KEY (ISEQ_ID),
);

CREATE TABLE StockDetails (
Company_name varchar(100) NOT NULL,
InstrumentName nvarchar(100), 
MarketCap bigint,
ISEQWeightingPercent int,
DescriptionStockDetails nvarchar(800),
Website nvarchar(500),
DepartmentDetails nvarchar(100),
CONSTRAINT pk_Company_name PRIMARY KEY (Company_name),
);

CREATE TABLE StockHistorical (
Historical_ID int NOT NULL,
Company_name varchar(100) NOT NULL,
Date_Stock date, 
Open_Stock int,
High_Stock int,
Low_Stock int,
Close_Stock int,
AdjClose_Stock int,
Volume_Stock bigint,
CONSTRAINT pk_Historical_ID PRIMARY KEY (Historical_ID),
);
ALTER TABLE StockHistorical 
ADD CONSTRAINT fk_Company_name
FOREIGN KEY (Company_name) REFERENCES StockDetails(Company_name)

CREATE TABLE IrishTimesAllStockNews (
News_ID int NOT NULL,
Company_name_News varchar(100),
Date_News date, 
Headline_News nvarchar(500),
Description_News nvarchar(500),
Historical_ID_News int,
CONSTRAINT pk_News_ID PRIMARY KEY (News_ID)
);
ALTER TABLE IrishTimesAllStockNews 
ADD CONSTRAINT fk_Company_name_News
FOREIGN KEY (Company_name_News) REFERENCES StockDetails(Company_name),
CONSTRAINT fk_Historical_ID_News
FOREIGN KEY (Historical_ID_News) REFERENCES StockHistorical(Historical_ID)


CREATE TABLE IrishTimesPolitical (
Political_ID int NOT NULL,
Name_political varchar(50),
Date_Political date, 
Headline_Political nvarchar(250),
Description_Political nvarchar(250),
Historical_ID_Political int,
ISEQ_ID_Political int,
CONSTRAINT pk_Political_ID PRIMARY KEY (Political_ID),
);
ALTER TABLE IrishTimesPolitical 
ADD CONSTRAINT fk_ISEQ_ID_Political
FOREIGN KEY (ISEQ_ID_Political) REFERENCES ISEQOverallHistorical(ISEQ_ID),
CONSTRAINT fk_Historical_ID_Political
FOREIGN KEY (Historical_ID_Political) REFERENCES StockHistorical(Historical_ID)

CREATE TABLE IrishTimesEconomical (
Economical_ID int NOT NULL,
Name_Economical varchar(50),
Date_Economical date, 
Headline_Economical nvarchar(500),
Description_Economical nvarchar(500),
Historical_ID_Economical int,
ISEQ_ID_Economical int,
CONSTRAINT pk_Economical_ID PRIMARY KEY (Economical_ID),
);
ALTER TABLE IrishTimesEconomical 
ADD CONSTRAINT fk_ISEQ_ID_Economical
FOREIGN KEY (ISEQ_ID_Economical) REFERENCES ISEQOverallHistorical(ISEQ_ID),
CONSTRAINT fk_Historical_ID_Economical
FOREIGN KEY (Historical_ID_Economical) REFERENCES StockHistorical(Historical_ID)

CREATE TABLE IrishTimesSocial (
Social_ID int NOT NULL,
Name_Social varchar(50),
Date_Social date, 
Headline_Social nvarchar(500),
Description_Social nvarchar(500),
Historical_ID_Social int,
ISEQ_ID_Social int,
CONSTRAINT pk_Social_ID PRIMARY KEY (Social_ID),
);
ALTER TABLE IrishTimesSocial 
ADD CONSTRAINT fk_ISEQ_ID_Social
FOREIGN KEY (ISEQ_ID_Social) REFERENCES ISEQOverallHistorical(ISEQ_ID),
CONSTRAINT fk_Historical_ID_Social
FOREIGN KEY (Historical_ID_Social) REFERENCES StockHistorical(Historical_ID)

CREATE TABLE IrishTimesTech (
Tech_ID int NOT NULL,
Name_Tech varchar(50),
Date_Tech date, 
Headline_Tech nvarchar(250),
Description_Tech nvarchar(250),
Historical_ID_Tech int,
ISEQ_ID_Tech int,
CONSTRAINT pk_Tech_ID PRIMARY KEY (Tech_ID),
);
ALTER TABLE IrishTimesTech 
ADD CONSTRAINT fk_ISEQ_ID_Tech
FOREIGN KEY (ISEQ_ID_Tech) REFERENCES ISEQOverallHistorical(ISEQ_ID),
CONSTRAINT fk_Historical_ID_Tech
FOREIGN KEY (Historical_ID_Tech) REFERENCES StockHistorical(Historical_ID)

CREATE TABLE IrishTimesEnvior (
Envior_ID int NOT NULL,
Envior_Tech varchar(50),
Date_Envior date, 
Headline_Envior nvarchar(250),
Description_Envior nvarchar(250),
Historical_ID_Envior int,
ISEQ_ID_Envior int,
CONSTRAINT pk_Envior_ID PRIMARY KEY (Envior_ID),
);
ALTER TABLE IrishTimesEnvior
ADD CONSTRAINT fk_ISEQ_ID_Envior
FOREIGN KEY (ISEQ_ID_Envior) REFERENCES ISEQOverallHistorical(ISEQ_ID),
CONSTRAINT fk_Historical_ID_Envior
FOREIGN KEY (Historical_ID_Envior) REFERENCES StockHistorical(Historical_ID)

CREATE TABLE IrishTimesLegal (
Legal_ID int NOT NULL,
Legal_Tech varchar(50),
Date_Legal date, 
Headline_Legal nvarchar(250),
Description_Legal nvarchar(250),
Historical_ID_Legal int,
ISEQ_ID_Legal int,
CONSTRAINT pk_Legal_ID PRIMARY KEY (Legal_ID),
);
ALTER TABLE IrishTimesLegal
ADD CONSTRAINT fk_ISEQ_ID_Legal
FOREIGN KEY (ISEQ_ID_Legal) REFERENCES ISEQOverallHistorical(ISEQ_ID),
CONSTRAINT fk_Historical_ID_Legal
FOREIGN KEY (Historical_ID_Legal) REFERENCES StockHistorical(Historical_ID)
