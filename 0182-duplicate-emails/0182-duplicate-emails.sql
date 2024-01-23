# Write your MySQL query statement below 
SELECT email
FROM (SELECT email, COUNT(*) AS count_by_group
        FROM Person AS p
      GROUP BY email) AS insider
WHERE count_by_group > 1