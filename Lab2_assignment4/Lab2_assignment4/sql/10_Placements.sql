WITH result AS 
(SELECT s.id, s.name, f.friend_id, p1.salary AS salary, p2.salary AS friendsalary
FROM students AS s
inner join friends AS f
ON s.id = f.id
INNER JOIN packages AS p1
ON s.id = p1.id
INNER JOIN packages AS p2
ON f.friend_id = p2.id)
SELECT name FROM result
WHERE friendsalary > salary
ORDER BY friendsalary