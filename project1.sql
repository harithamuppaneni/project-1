CREATE DATABASE bank_case;
use bank_case;
show tables;
SELECT * FROM bank_data;
# Top 5 Clients with highest income
SELECT client_id,name,estimated_income
FROM bank_data
ORDER BY estimated_income DESC
LIMIT 10;
#AVERAGE INCOME BY NATIONALITY
SELECT nationality,AVG(estimated_income) AS avg_income
FROM bank_data
GROUP BY nationality; 
# clients with more than 1 credit card and a balance over 50,000
SELECT client_id,name,amount_of_credit_cards,credit_card_balance 
FROM bank_data
WHERE amount_of_credit_cards > 1 AND credit_card_balance > 5000
LIMIT 20;
# employees who join before 2010
SELECT Client_id,Name,joined_bank
FROM bank_data
WHERE joined_bank < 2010-01-01
LIMIT 30;
# BANK DEPOSITS AND LOANS BY GENDER
SELECT genderid,sum(bank_deposits)AS total_deposits,SUM(bank_loans)AS total_loans
FROM bank_data
GROUP BY genderid;


