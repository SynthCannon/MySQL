show tables;


SELECT 
    *
FROM
    genres_movies
ORDER BY genre_id
LIMIT 10;




SELECT 
    genre_id, COUNT(genre_id) AS cnt
FROM
    genres_movies
GROUP BY genre_id;




SELECT 
    genre_id, COUNT(genre_id) AS cnt
FROM
    genres_movies
GROUP BY genre_id
ORDER BY cnt DESC
LIMIT 1;

 

SELECT 
    g.name, genre_id, COUNT(m.genre_id) AS cnt
FROM
    genres_movies AS m
        JOIN
    genres AS g ON (m.genre_id = g.id)
GROUP BY genre_id
ORDER BY cnt;



SELECT 
    r.id,
    r.user_id,
    r.rated_at,
    g.id,
    g.name,
    u.id,
    u.gender,
    u.zip_code,
    o.name
FROM
    ratings AS r
        JOIN
    genres_movies AS gm ON r.movie_id = gm.id
        JOIN
    genres AS g ON r.movie_id = g.id
        JOIN
    users u ON r.user_id = u.id
        JOIN
    occupations o ON r.user_id = o.id
WHERE
    gm.id = 11
LIMIT 10;



SELECT 
    o.name, COUNT(u.occupation_id) AS cnt
FROM
    ratings r
        JOIN
    genres_movies g ON r.movie_id = g.movie_id
        JOIN
    users u ON r.user_id = u.id
        JOIN
    occupations o ON u.occupation_id = o.id
WHERE
    g.id = 11
GROUP BY u.occupation_id
ORDER BY cnt DESC;



SELECT 
    o.name, COUNT(r.rating) AS cnt
FROM
    ratings r
        JOIN
    users u ON r.user_id = u.id
        JOIN
    occupations o ON u.occupation_id = o.id
GROUP BY u.occupation_id
ORDER BY cnt DESC;


SELECT 
    o.name, AVG(r.rating) AS average, COUNT(r.rating) AS cnt
FROM
    ratings r
        JOIN
    genres_movies g ON r.movie_id = g.movie_id
        JOIN
    users u ON r.user_id = u.id
        JOIN
    occupations o ON u.occupation_id = o.id
WHERE
    g.genre_id = 11
GROUP BY u.occupation_id
ORDER BY AVG(r.rating) DESC;





SELECT 
    sub.o_name, sub.g_name, sub.average, sub.cnt
FROM
    (SELECT 
        o.name AS o_name,
            g.name AS g_name,
            AVG(r.rating) AS average,
            COUNT(r.rating) AS cnt
    FROM
        ratings r
    JOIN genres_movies gm ON (r.movie_id = gm.movie_id)
    JOIN genres g ON (gm.genre_id = g.id)
    JOIN users u ON (r.user_id = u.id)
    JOIN occupations o ON (u.occupation_id = o.id)
    WHERE
        gm.genre_id = 11
    GROUP BY u.occupation_id , g.name
    ORDER BY AVG(r.rating) DESC) AS sub
WHERE
    (cnt > 100);


SELECT 
    sub2.o_name, sub2.g_name, MAX(sub2.average) as avrg, sub2.cnt
FROM
(SELECT 
    o.name AS o_name,
    g.name AS g_name,
    AVG(r.rating) AS average,
    COUNT(r.rating) AS cnt
FROM
    ratings r
        JOIN
    genres_movies gm ON (r.movie_id = gm.movie_id)
        JOIN
    genres g ON (gm.genre_id = g.id)
        JOIN
    users u ON (r.user_id = u.id)
        JOIN
    occupations o ON (u.occupation_id = o.id)
WHERE
    gm.genre_id = 11
GROUP BY u.occupation_id , g.name
ORDER BY AVG(r.rating) DESC) AS sub2;



SELECT 
    sub3.o_name, sub3.g_name, AVG(sub3.average) AS avrg, COUNT(sub3.cnt) as count
FROM
    (SELECT 
        o.name AS o_name,
            g.name AS g_name,
            AVG(r.rating) AS average,
            COUNT(r.rating) AS cnt
    FROM
        ratings r
    JOIN genres_movies gm ON (r.movie_id = gm.movie_id)
    JOIN genres g ON (gm.genre_id = g.id)
    JOIN users u ON (r.user_id = u.id)
    JOIN occupations o ON (u.occupation_id = o.id)
    GROUP BY u.occupation_id , g.name
    ORDER BY AVG(r.rating) DESC) AS sub3
GROUP BY sub3.o_name;














