-- CREATE DATABASE netflix_db;
-- USE netflix_db;

-- CREATE TABLE netflix (
--     show_id VARCHAR(10),
--     type VARCHAR(20),
--     title TEXT,
--     director TEXT,
--     cast TEXT,
--     country TEXT,
--     date_added TEXT,
--     release_year INT,
--     rating VARCHAR(10),
--     duration VARCHAR(20),
--     listed_in TEXT,
--     description TEXT
-- );
-- SELECT COUNT(*) FROM netflix;
-- SELECT * FROM netflix LIMIT 5;
-- WITH yearly_data AS (
--     SELECT release_year, COUNT(*) AS total
--     FROM netflix
--     GROUP BY release_year
-- )
-- SELECT * 
-- FROM yearly_data
-- WHERE release_year > 2015;

SELECT country, COUNT(*) AS total
FROM netflix
GROUP BY country
ORDER BY total DESC
limit 5;
-- SELECT DISTINCT country FROM netflix;
