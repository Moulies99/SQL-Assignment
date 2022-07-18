/*
	1. Construct a query that counts the number of rows in the account table.
*/

SELECT
	COUNT(*)
FROM
	account;
    
    
/*
	2.Retrieve the first two rows from account table.
*/
SELECT
	*
FROM
	account
LIMIT 2;


/*
	3. Retrieve the third and fourth row from account table.
*/
SELECT
	*
FROM
	account
LIMIT 2 OFFSET 2;

/*
	4. Retrieve year of birth, month of birth, day of birth, weekday of birth 
    for all the individuals from the table individual
*/
SELECT
	*,
    YEAR( birth_date ),
    MONTH( birth_date ),
    DAY( birth_date ),
    DAYOFWEEK( birth_date )
FROM
	individual;
    
/*
	5. Write a query that returns the 17th through 25th characters of the string 
    'Please find the substring in this string'.
*/
SELECT 
	SUBSTRING("SQL Tutorial Is Find abcdefghi", 17, 9) AS ExtractString;


/*
	 6. Write a query that returns the absolute value and sign (-1, 0, or 1) of the number -25.76823.
     Also return the number rounded to the nearest hundredth.
*/
SELECT CEILING( ABS( -1234.76823) / 100) * 100 ;

/*
	7. Write a query that adds 30 days to the current date.
*/
SELECT DATE_ADD( CURDATE(), INTERVAL 30 DAY );

/*
	8. Retrieve the first three letters of first name and last three letters 
    of last name from the table individual.
*/
SELECT 
	LEFT( fname, 3),
    RIGHT( lname, 3 )
FROM
	individual;

SELECT 
	SUBSTRING( fname, 1, 3),
    SUBSTRING( lname, -3, 3 )
FROM
	individual;

/*
	9. Retrieve the first names in Upper case from individual whose first name consists of five characters.
*/
SELECT 
	UPPER( fname )
FROM
	individual
WHERE
	LENGTH(fname) = 5;


/*
	10. Retrieve the maximum balance and average balance from the account table for customer ID = 1.
*/
SELECT
	MAX(avail_balance),
    AVG(avail_balance)
FROM
	account
WHERE
	cust_id = 1;