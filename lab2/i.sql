select C.customer_name from Customer C,Borrower B,Loan L,Branch BB where
C.customer_name = B.customer_name and B.loan_number = L.loan_number and L.branch_name = BB.branch_name and BB.branch_city = C.customer_city;
