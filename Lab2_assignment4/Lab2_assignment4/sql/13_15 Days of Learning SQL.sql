WITH query_request1 AS (
    SELECT
        submission_date,
        COUNT(DISTINCT hacker_id) unique_count
        FROM
        (SELECT DISTINCT(T0.hacker_id),
            T0.submission_date, 
            ROW_NUMBER() OVER(PARTITION BY T0.hacker_id ORDER BY T0.submission_date ASC) subdate_rowno
        FROM 
            (
                SELECT submission_date, hacker_id 
                FROM Submissions 
                GROUP BY submission_date, hacker_id
            )T0
        ) T1 
    WHERE T1.subdate_rowno >= DAY(T1.submission_date)
    GROUP BY submission_date
            ),
    query_request2 AS (
        SELECT
            submission_date,
            submission_count,
            hacker_id,
            RANK() OVER (PARTITION BY submission_date ORDER BY submission_count DESC, hacker_id ASC) Rank
        FROM
            (SELECT
                submission_date,
                COUNT(submission_date) as submission_count,
                hacker_id
            FROM Submissions
            GROUP BY submission_date, hacker_id
             ) T3
        )
SELECT query_request2.submission_date, query_request1.unique_count, query_request2.hacker_id, H.name
FROM query_request2
JOIN query_request1
ON query_request1.submission_date= query_request2.submission_date
JOIN Hackers H ON H.hacker_id=query_request2.hacker_id
WHERE query_request2.Rank = 1