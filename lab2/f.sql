select distinct balance from Customer C,Depositor D,Account A where
C.customer_name = D.customer_name and D.account_number = A.account_number and LENGTH(customer_city) = 6;
