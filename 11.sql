SELECT title
FROM people
JOIN stars ON people.id = stars.person_id -- we need to link the person to the movie with people id, movie id, and stars in id.
JOIN ratings ON ratings.movie_id = stars.movie_id
JOIN movies ON movies.id = stars.movie_id
WHERE name = "Chadwick Boseman" -- to the actor
ORDER BY rating DESC LIMIT 5; -- descending order and limited to top 5