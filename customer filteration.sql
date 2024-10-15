-- Age Range of Loan Takers
SELECT 
    MIN(age) AS min_age,
    MAX(age) AS max_age,
    AVG(age) AS avg_age
FROM customers
WHERE previous_loan_taken = TRUE;

-- Income Range of Loan Takers
SELECT 
    MIN(income) AS min_income,
    MAX(income) AS max_income,
    AVG(income) AS avg_income
FROM customers
WHERE previous_loan_taken = TRUE;

-- Credit Score of Loan Takers
SELECT 
    MIN(credit_score) AS min_credit_score,
    MAX(credit_score) AS max_credit_score,
    AVG(credit_score) AS avg_credit_score
FROM customers
WHERE previous_loan_taken = TRUE;

--  Identifying Potential Loan Takers
SELECT * 
FROM customers
WHERE 
    age BETWEEN 25 AND 40
    AND income BETWEEN 30000 AND 60000
    AND credit_score BETWEEN 650 AND 800
    AND previous_loan_taken = FALSE;


