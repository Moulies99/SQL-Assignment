/*
	1. Construct a query to count the number of accounts held by each customer. 
    Show the customer ID and the number of accounts for each customer.
*/
SELECT 
	cust_id, COUNT(*) as No_of_accounts
FROM
	account
GROUP BY cust_id;

/*
	2. Modify the previous query to fetch only those customers who has more than two accounts.
*/
SELECT 
	cust_id, COUNT(*) as No_of_accounts
FROM
	account
GROUP BY cust_id
HAVING 
	No_of_accounts > 2
;

/*
	3. Retrieve first name and date of birth from individual and sort them from youngest to oldest.
*/
SELECT 
	fname, birth_date
FROM
	individual
ORDER BY birth_date ;

/*
	4. From the account table, retrieve the year of account opening (year part of open_date) 
    and average available balance (avail_balance) present in the accounts that are opened 
    in each calendar year. Retrieve the year only if the average balance is greater than 200. 
    Also sort the results based on calendar year.
*/

SELECT 
	YEAR(open_date) as Year_of_opening,
    AVG( avail_balance ) AS avg_balance
FROM
	account
GROUP BY Year_of_opening
HAVING 
	avg_balance > 200
ORDER BY 1;

/*
	5. Retrieve the product code and maximum pending balance for the
    product codes (CHK, SAV, CD)  present in account table. 
*/

SELECT 
	product_cd,
    MAX(pending_balance)
FROM
	account
WHERE
	product_cd IN ( 'CHK', 'SAV', 'CD' )
GROUP BY product_cd;