--HackerID, Name, Challenge created

SELECT c.hacker_id, name, COUNT(c.hacker_id) as cnt
FROM hackers as h
INNER JOIN challenges as c
ON c.hacker_id = h.hacker_id
GROUP BY c.hacker_id, name
HAVING
	COUNT(c.hacker_id) = (SELECT TOP 1 COUNT(c1.challenge_id) FROM Challenges AS c1 GROUP BY c1.hacker_id ORDER BY COUNT(*) DESC) OR
	COUNT(c.hacker_id) NOT IN (SELECT COUNT(c2.challenge_id) FROM Challenges AS c2 GROUP BY c2.hacker_id HAVING c2.hacker_id <> c.hacker_id)
ORDER BY cnt DESC, c.hacker_id