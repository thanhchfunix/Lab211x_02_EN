SELECT N,
    CASE
        WHEN p is null THEN 'Root'
        WHEN N in (SELECT P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST
ORDER BY N;