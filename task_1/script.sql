SELECT authors.name AS Author, GROUP_CONCAT(songs.name) AS Songs, SUM(listening.value) AS Listenings
FROM authors
         INNER JOIN songs ON authors.id = songs.author_id
	     INNER JOIN listening ON songs.id = listening.song_id
GROUP BY Author
ORDER BY Listenings DESC
LIMIT 1, 3;