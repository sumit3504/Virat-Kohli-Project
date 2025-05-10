create database viratkohlimatch;
use viratkohlimatch;
CREATE TABLE KohliStats (
    match_id INT PRIMARY KEY,
    opponent VARCHAR(50),
    format VARCHAR(10), -- 'ODI', 'T20', 'Test'
    runs INT,
    balls_faced INT,
    fours INT,
    sixes INT,
    not_out BOOLEAN
);
INSERT INTO KohliStats VALUES
(1, 'Australia', 'ODI', 115, 105, 12, 2, FALSE),
(2, 'England', 'Test', 35, 50, 4, 0, FALSE),
(3, 'South Africa', 'T20', 72, 45, 6, 3, TRUE),
(4, 'Pakistan', 'ODI', 5, 10, 0, 0, FALSE),
(5, 'New Zealand', 'ODI', 138, 121, 14, 4, FALSE),
(6, 'Sri Lanka', 'ODI', 89, 78, 8, 1, FALSE),
(7, 'Bangladesh', 'Test', 254, 289, 22, 7, TRUE),
(8, 'West Indies', 'ODI', 45, 39, 5, 0, FALSE),
(9, 'Afghanistan', 'T20', 63, 52, 7, 1, TRUE);

SELECT MAX(runs) AS max_runs FROM KohliStats;

SELECT MIN(runs) AS min_runs FROM KohliStats;

SELECT MAX(sixes) AS max_sixes FROM KohliStats;

SELECT MAX(fours) AS max_fours FROM KohliStats;

SELECT COUNT(*) AS full_centuries
FROM KohliStats
WHERE runs >= 100;

SELECT COUNT(*) AS half_centuries
FROM KohliStats
WHERE runs >= 50 AND runs < 100;

SELECT COUNT(*) AS total_matches FROM KohliStats;

SELECT SUM(runs) AS total_runs FROM KohliStats;




