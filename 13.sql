SELECT name
FROM people
JOIN stars ON stars.person_id = people.id
WHERE name != "Kevin Bacon" --we need to find the movies of kevin but exlude him because we need his co-stars
AND movie_id IN
    (SELECT movie_id
    FROM people
    JOIN stars ON stars.person_id = people.id
    WHERE name = "Kevin Bacon" --and obviously the search was inside another search where we singled out kevin bacon to find his co-stars
    AND birth = 1958);