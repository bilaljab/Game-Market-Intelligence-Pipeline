SELECT genre, SUM(total_sales) AS total_sales_sum
FROM games
GROUP BY genre
ORDER BY total_sales_sum DESC
LIMIT 1;

SELECT title, critic_score, total_sales
FROM games
WHERE critic_score > 9
ORDER BY total_sales DESC
LIMIT 10;

SELECT genre, round(SUM(na_sales),2) AS North_America, round(SUM(jp_sales),2) AS Japan, round(SUM(pal_sales),2) AS Europe
FROM games
GROUP BY genre
ORDER BY North_America DESC;

SELECT console, COUNT(*) AS number_of_games, SUM(total_sales) AS sales
FROM games
GROUP BY console
HAVING sum(total_sales) > 500
ORDER BY sales DESC;

SELECT year, round(AVG(critic_score),2) AS avg_critic_score, round(SUM(total_sales),2) AS sales
FROM games
WHERE year IS NOT NULL
GROUP BY year
ORDER BY year;

SELECT publisher, COUNT(*) AS num_of_games, round(AVG(critic_score),2) AS avg_critic_score
FROM games
WHERE publisher != "Unknown"
GROUP BY publisher
HAVING avg_critic_score > 8 and num_of_games > 20
ORDER BY num_of_games DESC;

SELECT 
	year, 
    round(greatest(SUM(na_sales), SUM(jp_sales), SUM(pal_sales), SUM(other_sales)),2) AS max_sales,
    CASE
		WHEN SUM(na_sales) = GREATEST(SUM(na_sales), SUM(jp_sales), SUM(pal_sales), SUM(other_sales)) THEN 'NA'
		WHEN SUM(jp_sales) = GREATEST(SUM(na_sales), SUM(jp_sales), SUM(pal_sales), SUM(other_sales)) THEN 'JP'
        WHEN SUM(pal_sales) = GREATEST(SUM(na_sales), SUM(jp_sales), SUM(pal_sales), SUM(other_sales)) THEN 'PAL'
        ELSE 'Other'
        END AS dominant_region
FROM games
GROUP BY year
ORDER BY year;

SELECT title, critic_score, total_sales
FROM games
WHERE critic_score < 6 AND total_sales > 2
ORDER BY total_sales DESC;

SELECT title, round(SUM(total_sales),2) AS sales, count(DISTINCT console) AS num_console
FROM games
GROUP BY 1
HAVING num_console > 1
ORDER BY sales DESC;