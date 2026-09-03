# Write your MySQL query statement below
Select Department, Employee, Salary 
from ( SELECT D.name
 AS department, E.name 
 AS Employee, E.salary, Dense_rank() 
 OVER ( PARTITION BY D.name 
 ORDER BY E.salary DESC ) 
 AS ranking
  FROM Employee E
   JOIN Department D
    ON E.departmentId = D.id ) t where ranking <= 3
