SELECT MAX(extended.D), MAX(extended.P), MAX(extended.S), MAX(extended.A)
FROM(
    SELECT *, ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) as rn,
    CASE WHEN Occupation = 'Doctor' THEN Name END as D,
    CASE WHEN Occupation = 'Professor' THEN Name END as P,
    CASE WHEN Occupation = 'Singer' THEN Name END as S,
    CASE WHEN Occupation = 'Actor' THEN Name END as A
    FROM OCCUPATIONS
    ) as extended
GROUP BY extended.rn;