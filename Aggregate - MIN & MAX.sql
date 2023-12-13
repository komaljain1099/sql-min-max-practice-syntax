SELECT * from customers;

SELECT * FROM customers
ORDER BY creditLimit desc;

SELECT min(creditLimit) FROM customers;
SELECT max(creditLimit) FROM customers;

SELECT country, max(creditLimit) as max_credit_limit FROM customers
group by country
order by max_credit_limit desc
limit 1;


SELECT * FROM orders;
SELECT min(orderDate) as first_order_date, 
max(orderDate) as last_order_date FROM orders;

SELECT customerNumber, min(orderDate) as first_order_date,
max(orderDate) as last_order_date
from orders
group by customerNumber
HAVING 


SELECT customerNumber, min(orderDate) as first_date,
max(orderDate) as last_date
from orders
group by 1

SELECT min(orderDate) FROM orders;
SELECT max(orderDate) FROM orders;








SELECT customernumber, 
min(orderDate) as first_order_date,
max(orderDate) as last_order_date
FROM orders
group by 1;

SELECT customernumber, 
min(orderDate) as first_order_date,
max(orderDate) as last_order_date
FROM orders
group by customerNumber
having first_order_date<"2003-12-31" AND last_order_date<"2004-06-30"