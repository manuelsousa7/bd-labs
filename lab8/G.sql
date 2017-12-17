SELECT customer_name FROM Depositor natural join Account group by customer_name having count(distinct branch_name) =
ALL(SELECT count(*) FROM Branch)
