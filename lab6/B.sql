SELECT customer_name FROM Customer natural join Borrower natural join Loan natural join Branch WHERE customer_city = branch_city;
