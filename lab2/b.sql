select distinct C.customer_city from Customer C,Borrower B,Loan L 
where C.customer_name = B.customer_name and B.loan_number = L.loan_number and L.amount between 1000 and 2000;
