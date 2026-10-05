-- European Happiness & Regional Wellbeing
-- SQL Analysis

-- 1. View the dataset
SELECT *
FROM european_happiness;

-- 2. Average happiness score
SELECT
    AVG(happiness_score) AS average_happiness
FROM european_happiness;

-- 3. Countries with the highest happiness scores
SELECT
    country,
    happiness_score
FROM european_happiness
ORDER BY happiness_score DESC
LIMIT 10;

-- 4. Countries with the lowest happiness scores
SELECT
    country,
    happiness_score
FROM european_happiness
ORDER BY happiness_score ASC
LIMIT 10;

-- 5. Happiness and freedom
SELECT
    country,
    happiness_score,
    freedom_score
FROM european_happiness
ORDER BY happiness_score DESC;

-- 6. Average happiness by region
SELECT
    region,
    AVG(happiness_score) AS average_happiness
FROM european_happiness
GROUP BY region
ORDER BY average_happiness DESC;

-- 7. Economic factors and happiness
SELECT
    country,
    economic_score,
    happiness_score
FROM european_happiness
ORDER BY economic_score DESC;

-- 8. Social support and happiness
SELECT
    country,
    social_support,
    happiness_score
FROM european_happiness
ORDER BY social_support DESC;
