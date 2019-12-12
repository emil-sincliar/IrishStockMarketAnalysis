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


select * from StockDetails
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

select * from IrishTimesAllStockNews
CREATE TABLE IrishTimesAllStockNews (
News_ID int NOT NULL,
Company_name_News varchar(100),
Date_News date, 
Headline_News nvarchar(500),
Description_News nvarchar(500),
CONSTRAINT pk_News_ID PRIMARY KEY (News_ID)
);

CREATE TABLE IrishTimesPolitical (
Political_ID int NOT NULL,
Name_political varchar(50),
Date_Political date, 
Headline_Political nvarchar(500),
Description_Political nvarchar(500),
CONSTRAINT pk_Political_ID PRIMARY KEY (Political_ID),
);
drop table IrishTimesPolitical

CREATE TABLE IrishTimesEconomical (
Economical_ID int NOT NULL,
Name_Economical varchar(50),
Date_Economical date, 
Headline_Economical nvarchar(500),
Description_Economical nvarchar(500),
CONSTRAINT pk_Economical_ID PRIMARY KEY (Economical_ID),
);
drop table IrishTimesEconomical
CREATE TABLE IrishTimesSocial (
Social_ID int NOT NULL,
Name_Social varchar(50),
Date_Social date, 
Headline_Social nvarchar(500),
Description_Social nvarchar(500),
CONSTRAINT pk_Social_ID PRIMARY KEY (Social_ID),
);
drop table IrishTimesSocial
CREATE TABLE IrishTimesTech (
Tech_ID int NOT NULL,
Name_Tech varchar(50),
Date_Tech date, 
Headline_Tech nvarchar(500),
Description_Tech nvarchar(500),
CONSTRAINT pk_Tech_ID PRIMARY KEY (Tech_ID),
);
drop table IrishTimesTech

CREATE TABLE IrishTimesEnvior (
Envior_ID int NOT NULL,
Envior_Tech varchar(50),
Date_Envior date, 
Headline_Envior nvarchar(500),
Description_Envior nvarchar(500),
CONSTRAINT pk_Envior_ID PRIMARY KEY (Envior_ID),
);
drop table IrishTimesEnvior
CREATE TABLE IrishTimesLegal (
Legal_ID int NOT NULL,
Legal_Tech varchar(50),
Date_Legal date, 
Headline_Legal nvarchar(500),
Description_Legal nvarchar(500),
CONSTRAINT pk_Legal_ID PRIMARY KEY (Legal_ID),
);

drop table IrishTimesLegal