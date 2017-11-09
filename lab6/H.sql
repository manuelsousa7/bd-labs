SELECT customer_name FROM Depositor group by customer_name having count(account_number) > 2 ORDER BY customer_name ASC;
