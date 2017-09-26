select distinct L.amount from Customer C,Loan L,Borrower B where
C.customer_name = B.customer_name and B.loan_number = L.loan_number and C.customer_city like '% %';
