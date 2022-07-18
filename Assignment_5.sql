/*
	1. Retrieve first name, title and department name by joining tables 
    employee and department using department id.
*/
SELECT
	e.fname, e.title, d.name
FROM
	Employee e
		JOIN
	Department d ON	e.dept_id = d.dept_id
;

/*
	2. Left join table product with table product_type (product_type left join product) 
    to retrieve product_type.name and product.name from the tables.
*/
SELECT
	pt.name as Product_type_name, p.name as Product_name
FROM
	product p
		LEFT JOIN
	product_type pt ON	p.product_type_cd = pt.product_type_cd
;

/*
	3. Using inner join, Retrieve the full employee name (fname followed by a space and then lname), 
    Superior name (using superior_emp_id) from the employee table.
	Ex, for Susan Barker, Michael is superior
*/
SELECT DISTINCT
	CONCAT(e.fname, " ", e.lname) as EE_name,
    CONCAT(e1.fname, " ", e1.lname) as Superior_name
FROM
	employee e
		INNER JOIN
	employee e1 ON	e.superior_emp_id = e1.emp_id
;

/*
	4. Using subquery, retrieve the fname and lname of the employees 
    whose superior is ‘Susan Hawthorne’ from employee
*/
SELECT
	fname, lname
FROM
	employee e
where e.superior_emp_id = ( SELECT
								emp_id
							FROM
								employee e1
							WHERE
								fname = 'Susan' 
									AND
								lname = 'Hawthorne'
							);

/*
	5. In employee table, retrieve the superior names (fname and lname) present in department 1. 
    A person is superior if he/she is superior to atleast one person in the given department. 
    Use sub-query concept.
*/
SELECT 
	fname, lname
FROM
	employee
WHERE
	superior_emp_id IN (SELECT
							emp_id
						FROM
							employee e
								JOIN
							department d ON e.dept_id = d.dept_id
						WHERE
							d.dept_id = 1
						);
                            
							
							
SELECT * FROM department;
