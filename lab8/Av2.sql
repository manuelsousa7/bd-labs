SELECT distinct customer_name FROM Customer WHERE customer_city IN (SELECT branch_city FROM branch);
