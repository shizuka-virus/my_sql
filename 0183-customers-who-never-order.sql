/**
* 183. Customers Who Never Order
* https://leetcode.com/problems/customers-who-never-order/
*/

SELECT Name as 'Customers'
FROM Customers
WHERE Id NOT IN (SELECT CustomerId FROM Orders);