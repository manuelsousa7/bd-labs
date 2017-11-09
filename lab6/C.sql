SELECT distinct customer_name,customer_street FROM Customer natural join Account Where customer_name NOT IN
(SELECT customer_name FROM Customer natural join Borrower);

