/*
	1. Retrieve the account ID, customer ID, and available balance for all 
    accounts whose status equals 'ACTIVE' and whose available balance is 
    greater than $2,500.
*/
SELECT 
    account_id, cust_id, avail_balance
FROM
    account
WHERE
    status = 'ACTIVE'
        AND avail_balance > 2500;

/*
	2. Construct a query that retrieves all accounts opened in 2002.
*/
SELECT 
    *
FROM
    account
WHERE
    open_date BETWEEN '2002-01-01' AND '2002-12-31';

/*
	3. Retrieve the account ID, available balance and pending balance for all accounts
    where available balance is not equal to pending balance.
*/
SELECT 
    account_id, avail_balance, pending_balance
FROM
    account
WHERE 
	avail_balance <> pending_balance;
    
/*
	4. Retrieve account ID, Product code for the account ID’s 1,10,23,27
*/
SELECT 
    account_id, product_cd
FROM
    account
WHERE 
	account_id IN ( 1, 10, 23, 27 );
    
/*
	5. Retrieve account ID, available balance from all those accounts 
    whose available balance is in between 100 and 200
*/
SELECT 
    account_id, avail_balance
FROM
    account
WHERE 
	avail_balance BETWEEN 100 AND 200;



SELECT * FROM account;
