select distinct BB.branch_city from Customer C,Borrower B,Loan L,Branch BB,Depositor D,Account A where
C.customer_name = B.customer_name and B.loan_number = L.loan_number and L.branch_name = BB.branch_name and BB.branch_city = C.customer_city or
C.customer_name = D.customer_name and D.account_number = A.account_number and A.branch_name = BB.branch_name;
