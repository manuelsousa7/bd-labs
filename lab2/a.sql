select distinct C.customer_name from Customer C,Depositor D,Account A 
where C.customer_name = D.customer_name and D.account_number = A.account_number and A.balance > 500;
