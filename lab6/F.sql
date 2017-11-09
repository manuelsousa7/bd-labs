SELECT customer_name FROM Customer WHERE customer_name in 
(SELECT customer_name FROM Borrower group by customer_name having count(loan_number) > 1);
