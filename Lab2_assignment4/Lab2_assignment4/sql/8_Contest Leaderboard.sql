SELECT m.hacker_id, h.name, SUM(m.score) FROM
(SELECT hacker_id, challenge_id, MAX(score) AS score FROM Submissions GROUP BY hacker_id, challenge_id) AS m
JOIN Hackers AS h ON m.hacker_id = h.hacker_id 
GROUP By m.hacker_id, h.name
HAVING SUM(m.score) > 0
ORDER BY SUM(m.score) DESC, m.hacker_id