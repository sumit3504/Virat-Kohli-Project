CREATE DATABASE viratkohlimatch;
USE viratkohlimatch;

CREATE TABLE KohliYearlyStats (
    format VARCHAR(20),
    year INT,
    innings INT,
    runs INT,
    balls INT,
    outs INT,
    avg DECIMAL(5,1),
    strike_rate DECIMAL(5,1),
    high_score INT,
    fifties INT,
    centuries INT,
    fours INT,
    sixes INT,
    dot_percentage DECIMAL(5,1)
);

INSERT INTO KohliYearlyStats VALUES
('Test', 2017, 16, 1059, 1389, 14, 75.6, 76.2, 243, 1, 5, 98, 6, 54.2),
('Test', 2016, 18, 1215, 2011, 16, 75.9, 60.4, 235, 2, 4, 134, 2, 65.1),
('Test', 2024, 19, 417, 673, 17, 24.5, 62.0, 100, 1, 1, 43, 5, 67.0),
('ODI', 2018, 14, 1202, 1172, 9, 133.6, 102.6, 160, 3, 6, 123, 13, 41.7),
('T20I', 2016, 13, 641, 457, 6, 106.8, 140.3, 90, 7, 0, 70, 9, 29.1),
('TWENTY20', 2016, 16, 973, 640, 12, 81.1, 152.0, 113, 7, 4, 84, 38, 26.4);

SELECT * FROM KohliYearlyStats;

SELECT * FROM KohliYearlyStats
WHERE Format = 'Test';

SELECT Format, SUM(Runs) AS TotalRuns
FROM KohliYearlyStats
GROUP BY Format;

SELECT year,runs
FROM KohliYearlyStats
ORDER BY runs DESC
LIMIT 5;

SELECT Format, Year, strike_rate
FROM KohliYearlyStats
ORDER BY strike_rate DESC
LIMIT 3;

SELECT year, format, runs
FROM KohliYearlyStats
WHERE runs > 1000;

SELECT Format, Year, high_score
FROM KohliYearlyStats
ORDER BY high_score DESC;

SELECT * FROM KohliYearlyStats
WHERE Year = 2016;

SELECT AVG(Sixes) AS AverageSixes FROM KohliYearlyStats;

SELECT Format, Year, Sixes
FROM KohliYearlyStats
ORDER BY Sixes DESC
LIMIT 5;

SELECT Format, Year, Fours
FROM KohliYearlyStats
ORDER BY Fours DESC
LIMIT 3;
