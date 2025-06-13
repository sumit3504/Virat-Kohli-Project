Virat-Kohli-Project Analysis 

This project explores the career performance of Virat Kohli using detailed yearly statistics from international cricket formats — Test, ODI, T20I, and Twenty20 domestic games.

📊 What’s Inside?
The analysis focuses on Kohli’s yearly performance, including:

Runs scored, innings played, and number of outs per year.

Batting average and strike rate trends.

High scores and milestone counts (50s and 100s).

Boundary-hitting: total fours and sixes by year.

Dot ball percentage — how often Kohli faces balls without scoring.

Format-wise comparison: Test, ODI, T20I, and domestic Twenty20.

🗂 Database Schema
The main dataset is stored in the KohliYearlyStats table with the following fields:

Column	Description
format	Match format (Test, ODI, T20I, etc.)
year	Year of the matches
innings	Number of innings played
runs	Total runs scored
balls	Balls faced
outs	Number of times dismissed
avg	Batting average
strike_rate	Runs per 100 balls faced
high_score	Highest individual score
fifties	Number of 50+ scores
centuries	Number of 100+ scores
fours	Total fours hit
sixes	Total sixes hit
dot_percentage	Percentage of dot balls faced

🔍 Key Insights from Queries
🏅 Top Run Scoring Years: Kohli scored over 1200 runs in Test cricket in 2016, his highest yearly tally.

🔥 Strike Rate Kings: Kohli’s highest strike rates come from Twenty20 formats, peaking at 152.0 in 2016.

💣 Boundary Mastery: The highest six-hitting year was Twenty20 (38 sixes in 2016), with 134 fours scored in Test cricket the same year.

📉 Low Dot Ball Percentage: Kohli faces the fewest dot balls in Twenty20, indicating aggressive and continuous scoring.

📊 Consistency Across Formats: Even in lower-scoring years like Test 2024, Kohli’s averages and strike rates remain competitive.

⚙️ Sample Queries
sql
Copy
Edit
-- Get total runs by format
SELECT Format, SUM(Runs) AS TotalRuns
FROM KohliYearlyStats
GROUP BY Format;

-- Top 5 years with highest runs
SELECT year, runs
FROM KohliYearlyStats
ORDER BY runs DESC
LIMIT 5;

-- Years with runs greater than 1000
SELECT year, format, runs
FROM KohliYearlyStats
WHERE runs > 1000;

-- Highest strike rates
SELECT Format, Year, strike_rate
FROM KohliYearlyStats
ORDER BY strike_rate DESC
LIMIT 3;

-- Average sixes per year
SELECT AVG(Sixes) AS AverageSixes FROM KohliYearlyStats;
📈 How To Use
Set up your SQL database and import the KohliYearlyStats table.

Run queries to explore yearly stats across formats.

Integrate with Python or visualization tools for deeper analysis.

🙌 Final Thoughts
This project captures a snapshot of Kohli’s career through the lens of yearly performance metrics. It highlights his adaptability and dominance across cricket’s different formats, showcasing his evolution as one of the modern greats.

Summary of where to bold:

Project title and player’s name on first mention.
    
Section headers.

Key stats or numbers (like "1200 runs", "152.0 strike rate").

Important terms like “average”, “strike rate”, “fours”, “sixes”.

Table column headers.

Anything you want to stand out when scanning.

This helps guide the reader’s eye to the most important info quickly without overdoing it.

Would you like me to bold any other specific parts?
