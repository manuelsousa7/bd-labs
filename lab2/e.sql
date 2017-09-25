select distinct branch_name from Customer C,Depositor D,Account A where
C.customer_name = D.customer_name and D.account_number = A.account_number and C.customer_name like 'J%n'
