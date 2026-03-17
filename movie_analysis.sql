-- Query 1: Top 10 highest grossing movies of all time
SELECT title, budget, revenue, vote_average
FROM movies
ORDER BY revenue DESC
LIMIT 10;

-- Query 2: Top 10 movies by ROI (return on investment)
SELECT 
    title,
    budget,
    revenue,
    ROUND((revenue - budget) / budget * 100, 2) AS roi_percent
FROM movies
WHERE budget > 0 AND revenue > 0
ORDER BY roi_percent DESC
LIMIT 10;

-- Query 3: Average rating by original language
-- Do non-English films rate higher or lower than English ones?
SELECT 
    original_language,
    ROUND(AVG(vote_average), 2) AS avg_rating,
    COUNT(id) AS movie_count
FROM movies
GROUP BY original_language
HAVING COUNT(id) > 10
ORDER BY avg_rating DESC;

-- Query 4: Average budget, revenue and ROI by decade
SELECT 
    FLOOR(YEAR(release_date) / 10) * 10 AS decade,
    AVG(budget),
    AVG(revenue),
    ROUND(AVG((revenue - budget) / budget * 100), 0) AS ROI_percent
FROM movies
WHERE budget > 0 AND revenue > 0
GROUP BY decade
ORDER BY decade ASC;

-- Query 5: Top 10 most voted movies
SELECT title, revenue, budget, vote_average, vote_count
FROM movies
ORDER BY vote_count DESC
LIMIT 10;

-- Query 6: Average rating and revenue by budget tier
SELECT 
    CASE 
        WHEN budget < 10000000 THEN 'Low'
        WHEN budget BETWEEN 10000000 AND 50000000 THEN 'Medium'
        WHEN budget BETWEEN 50000000 AND 100000000 THEN 'High'
        WHEN budget > 100000000 THEN 'Blockbuster'
    END AS tier,
    ROUND(AVG(vote_average), 2) AS avg_rating,
    ROUND(AVG(revenue), 2) AS avg_revenue,
    COUNT(id) AS movie_count
FROM movies
WHERE budget > 0
GROUP BY tier
ORDER BY avg_revenue DESC;