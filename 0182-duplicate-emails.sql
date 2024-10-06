/**
* 182. Duplicate Emails
* https://leetcode.com/problems/duplicate-emails/
*/

SELECT email 
FROM (SELECT email, COUNT(*) as 'count' FROM Person GROUP BY email) as temp 
WHERE temp.count > 1