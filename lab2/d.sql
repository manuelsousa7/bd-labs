select distinct A.balance from Loan L,Borrower B,Customer C,Depositor D,Account A 
where L.loan_number=B.loan_number and B.customer_name = C.customer_name and D.customer_name = C.customer_name and D.account_number = A.account_number
