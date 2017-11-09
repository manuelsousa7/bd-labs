SELECT distinct customer_name FROM Depositor WHERE customer_name IN (SELECT customer_name from Depositor
                                                                     group by customer_name having count(account_number) > 2) ORDER BY customer_name ASC;
