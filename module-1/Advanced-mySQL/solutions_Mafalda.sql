#Step 1: Calculate the royalty of each sale for each author and the advance for each author and publication

SELECT titleauthor.title_id AS 'Title_ID', au_id AS 'Author_ID', titles.advance * titleauthor.royaltyper / 100 AS 'Advance', titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS 'Royalty'
FROM titleauthor
INNER JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id
;

#Step 2: Aggregate the total royalties for each title and author

SELECT Title_ID, Author_ID, Advance, SUM(Royalty) AS 'Royalty_Total'
FROM (
	SELECT titleauthor.title_id AS 'Title_ID', au_id AS 'Author_ID', titles.advance * titleauthor.royaltyper / 100 AS 'Advance', titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS 'Royalty'
	FROM titleauthor
	INNER JOIN titles
	ON titleauthor.title_id = titles.title_id
	INNER JOIN sales
	ON titles.title_id = sales.title_id
	) AS sub_query1
GROUP BY Title_ID, Author_ID
;

#Step 3: Calculate the total profits of each author

SELECT Author_ID, SUM(Advance + Royalty_Total) AS 'Profit'
FROM (
	SELECT Title_ID, Author_ID, Advance, SUM(Royalty) AS 'Royalty_Total'
	FROM (
		SELECT titleauthor.title_id AS 'Title_ID', au_id AS 'Author_ID', titles.advance * titleauthor.royaltyper / 100 AS 'Advance', titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS 'Royalty'
		FROM titleauthor
		INNER JOIN titles
		ON titleauthor.title_id = titles.title_id
		INNER JOIN sales
		ON titles.title_id = sales.title_id
		) AS sub_query1
	GROUP BY Title_ID, Author_ID
    ) AS sub_query2
GROUP BY Author_ID
ORDER BY Profit DESC
LIMIT 3