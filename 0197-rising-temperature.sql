/**
* 197. Rising Temperature
* https://leetcode.com/problems/rising-temperature/
*/

SELECT w1.Id
FROM Weather w1, Weather w2
WHERE DATEDIFF(w1.RecordDate, w2.RecordDate) = 1
  AND w1.Temperature > w2.Temperature;



SELECT w1.Id
FROM Weather w1
LEFT JOIN Weather w2 ON DATEDIFF(w1.RecordDate, w2.RecordDate) = 1
WHERE w1.Temperature > w2.Temperature;