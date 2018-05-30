show tables;
SELECT * FROM genres_movies ORDER BY genre_id LIMIT 10;

SELECT genre_id, count(genre_id) as cnt from genres_movies group by genre_id;

SELECT genre_id, count(genre_id) as cnt from genres_movies group by genre_id order by cnt desc limit 1; 

SELECT g.name, genre_id, count(m.genre_id) as cnt from genres_movies as m join genres as g on (m.genre_id = g.id) group by genre_id order by cnt;

SELECT r.id, r.user_id, r.rated_at, g.id, g.name, u.id, u.gender, u.zip_code, o.name FROM ratings AS r JOIN genres_movies as gm ON r.movie_id=gm.id JOIN genres as g ON r.movie_id=g.id JOIN users u ON r.user_id=u.id JOIN occupations o ON r.user_id=o.id WHERE gm.id=11 LIMIT 10;

select o.name, count(u.occupation_id) as cnt from ratings r join genres_movies g on r.movie_id=g.movie_id join users u on r.user_id=u.id join occupations o on u.occupation_id=o.id where g.id=11 group by u.occupation_id order by cnt desc;

select o.name, count(r.rating) as cnt from ratings r join users u on r.user_id = u.id join occupations o on u.occupation_id=o.id group by u.occupation_id order by cnt desc;

select o.name, avg(r.rating) as average, count(r.rating) as cnt from ratings r join genres_movies g on r.movie_id = g.movie_id join users u on r.user_id=u.id join occupations o on  u.occupation_id=o.id where g.genre_id=11 group by u.occupation_id order by avg(r.rating) desc;

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
    sub3.o_name, sub3.g_name, MAX(sub3.average) AS avrg, sub3.cnt
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


SELECT 
    sub4.m_title,
    sub4.m_release_date,
    MAX(sub4.cnt) AS max,
    sub4.cnt
FROM
    (SELECT 
        m.title AS m_title,
            m.release_date AS m_release_date,
            COUNT(r.rating) AS cnt
    FROM
        ratings r
    JOIN movies m ON r.movie_id = m.id
    JOIN users u ON r.user_id = u.id
    GROUP BY m.id
    ORDER BY m.title ASC) AS sub4;
#GROUP BY sub4.m_title;



DESCRIBE movies;












