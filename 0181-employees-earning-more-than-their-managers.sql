/**
* 181. Employees Earning More Than Their Managers
* https://leetcode.com/problems/employees-earning-more-than-their-managers/
*/

SELECT e.Name as 'Employee'
FROM Employee e
LEFT JOIN Employee m ON e.ManagerId = m.Id
WHERE e.Salary > m.Salary;