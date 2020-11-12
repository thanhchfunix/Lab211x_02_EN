SELECT
    CASE
        WHEN (A + B <= C) Or (B + C <= A) Or (A + C <= B) THEN 'Not A Triangle'
        WHEN (A = B) AND (B = C) THEN 'Equilateral'
        WHEN (A = B) Or (B = C) OR (C = A) THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM Triangles