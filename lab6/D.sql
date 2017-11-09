SELECT distinct customer_name FROM Customer natural join Depositor natural join Account natural join Branch WHERE branch_city = customer_city;
