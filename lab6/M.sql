SELECT branch_name FROM account group by branch_name
Having avg(balance) >= ALL(SELECT avg(balance) from account GROUP BY branch_name);
