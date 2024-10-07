/**
* 184. Department Highest Salary
* https://leetcode.com/problems/department-highest-salary/
*
* TODO: Runtime: 1160 ms, faster than 5.05% of MySQL online submissions for Department Highest Salary.
*/

SELECT d.Name as 'Department', e.Name as 'Employee', e.Salary
FROM Employee e
RIGHT JOIN Department d ON e.DepartmentId = d.Id
WHERE e.Salary = (SELECT MAX(Salary) FROM Employee e2 WHERE e.DepartmentId = e2.DepartmentId);