-- INSTEAD OF TYPING THIS QUERY ALL THE TIME...
SELECT
    title,
    released_year,
    genre,
    rating,
    first_name,
    last_name
FROM
    reviews
    JOIN series ON series.id = reviews.series_id
    JOIN reviewers ON reviewers.id = reviews.reviewer_id;

-- WE CAN CREATE A VIEW:
CREATE VIEW full_reviews AS
SELECT
    title,
    released_year,
    genre,
    rating,
    first_name,
    last_name
FROM
    reviews
    JOIN series ON series.id = reviews.series_id
    JOIN reviewers ON reviewers.id = reviews.reviewer_id;

-- NOW WE CAN TREAT THAT VIEW AS A VIRTUAL TABLE 
-- (AT LEAST WHEN IT COMES TO SELECTING)
SELECT
    *
FROM
    full_reviews;

CREATE VIEW ordered_series AS
SELECT
    *
FROM
    series
ORDER BY
    released_year;

-- You can insert, delete, update in this ordered_series view(virtual table)
-- which will also be reflected in original series table
-- since it does not contain joins, aggregration, group by etc
-- You can see mysql documentation to know about all restrictions
CREATE
OR REPLACE VIEW ordered_series AS
SELECT
    *
FROM
    series
ORDER BY
    released_year DESC;

ALTER VIEW ordered_series AS
SELECT
    *
FROM
    series
ORDER BY
    released_year;

DROP VIEW ordered_series;

SELECT
    title,
    AVG(rating),
    COUNT(rating) AS review_count
FROM
    full_reviews
GROUP BY
    title
HAVING
    COUNT(rating) > 1;