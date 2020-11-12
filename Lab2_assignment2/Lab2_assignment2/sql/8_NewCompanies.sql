SELECT C.company_code, C.founder,
    COUNT(DISTINCT L.Lead_manager_code), COUNT(DISTINCT S.Senior_manager_code),
    COUNT(DISTINCT M.manager_code), COUNT(DISTINCT E.Employee_code)
FROM Company c
INNER JOIN Lead_manager as L
ON C.company_code = L.company_code
INNER JOIN Senior_manager as S
ON L.lead_manager_code = S.Lead_manager_code
INNER JOIN Manager as M
ON S.senior_manager_code = M.senior_manager_code
INNER JOIN Employee as E
ON E.manager_code = M.manager_code
GROUP BY C.company_code, C.founder
ORDER BY C.company_code;