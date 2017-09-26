select distinct assets from Depositor D,Account A,Branch B where
D.account_number = A.account_number and B.branch_name = A.branch_name and D.customer_name = 'Johnson';
