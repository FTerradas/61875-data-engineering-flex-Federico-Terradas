-- Momento 1
CREATE SCHEMA federico_terradas_coderhouse;

CREATE TABLE federico_terradas_coderhouse.weather_data (
    city VARCHAR(250),
    temperature FLOAT,
    humidity INT,
    pressure INT,
    weather VARCHAR(250),
    wind_speed FLOAT,
    timestamp TIMESTAMP SORTKEY
)
diststyle all;

-- Momento 2
CREATE USER data_scientist PASSWORD 'Test1234';

CREATE GROUP ds_prod WITH USER data_scientist;

-- Momento 3
SELECT * FROM federico_terradas_coderhouse.weather_data;
