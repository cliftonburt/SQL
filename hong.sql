-- SELECT WHERE and LIMIT. SELECT comlumns, filter them by conditions, and limit them. 

SELECT _reserve, _user, _amount FROM aave."LendingPool_evt_Deposit"
WHERE _reserve = '\xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48'
Limit 100

-- Let's use Aggregate Functions to give us more informative results
-- COUNT, SUM, MAX, GROUP BY, HAVING, ORDER BY

--aggregators like COUNT SUM AND MAX go arund the columns they perform the artihmetic on
SELECT SUM(_amount), COUNT(_reserve) FROM aave."LendingPool_evt_Deposit"
WHERE _reserve = '\xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48'
Limit 100

