# Q1: What are the different genres?
SELECT DISTINCT prime_genre
FROM app

#Q2: Which is the genre with the most apps rated?
SELECT prime_genre, SUM(rating_count_tot)
FROM app
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC
LIMIT 1

# Q3: Which is the genre with most apps?
SELECT prime_genre, COUNT(*)
FROM app
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1

#Q4: Which is the one with least?
SELECT prime_genre, COUNT(*)
FROM app
GROUP BY prime_genre
ORDER BY COUNT(*) ASC
LIMIT 1

#Q5: Find the top 10 apps most rated.
SELECT track_name, rating_count_tot
FROM app
ORDER BY rating_count_tot DESC
LIMIT 10

#Q6: Find the top 10 apps best rated by users.
SELECT track_name, user_rating
FROM app
ORDER BY user_rating DESC
LIMIT 10

#Q10 - How could you take the top 3 apps regarding both user ratings and number of votes?
SELECT track_name, user_rating, rating_count_tot
FROM app
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3

#Q11. Do people care about the price of an app? 
SELECT track_name, rating_count_tot, price
FROM app
GROUP BY track_name, rating_count_tot, price
ORDER BY rating_count_tot DESC
LIMIT 10