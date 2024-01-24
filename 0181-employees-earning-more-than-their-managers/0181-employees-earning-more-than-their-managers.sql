# Write your MySQL query statement below
SELECT a.name Employee FROM employee a JOIN employee b ON a.managerid=b.id WHERE a.salary>b.salary