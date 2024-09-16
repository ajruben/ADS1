SELECT *
FROM employee
LEFT OUTER JOIN branch
ON employee.branch_id = branch.branch_id;

SELECT branch_id, AVG(salary)
FROM employee
GROUP BY branch_id;

SELECT branch_id, avg_salary
FROM (
        SELECT branch_id, AVG(salary) AS avg_salary
        FROM employee
        GROUP BY branch_id
    )
WHERE avg_salary > 35000;
