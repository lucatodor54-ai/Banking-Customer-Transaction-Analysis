# Banking Customer & Transaction Analysis

## Project Overview
This project demonstrates SQL-based banking data analysis using SQLite and a relational database containing synthetic customer, account, and transaction data.

The goal is to explore customer behavior, account balances, transaction activity, and customer segmentation through practical SQL queries.

## Technologies Used
- SQLite
- DB Browser for SQLite
- SQL (JOINs, CTEs, subqueries, aggregations, CASE WHEN)

## Dataset
The database includes:
- 100 synthetic customers
- 151 bank accounts, including one inactive test account
- 1,000 synthetic transactions

Three relational tables are used: `clienti`, `conturi`, and `tranzactii`.

## SQL Analyses
1. Customer Distribution by City
2. Average Account Balance by Account Type
3. Top 5 Customers by Account Balance
4. Transaction Type Analysis
5. Monthly Transaction Analysis
6. Transaction Volume by City
7. Inactive Account Detection
8. Top 10 Customers by Transaction Value
9. Transactions Above Average
10. Customer Segmentation (Premium, Standard, Basic)
11. Customer Segment Summary Report

## Skills Demonstrated
- Relational database design
- INNER JOIN and LEFT JOIN
- GROUP BY and aggregate functions
- Common Table Expressions (CTEs)
- SQL subqueries
- CASE WHEN segmentation
- Data analysis and reporting

## Disclaimer
All data used in this project is synthetic and created for educational and portfolio purposes. This project is not affiliated with any real bank.

## Author
Aspiring Data Analyst | SQL & Python | Accounting and Management Information Systems Student
## Power BI – Banking Analytics Dashboard

An interactive banking analytics dashboard built with **Microsoft Power BI**, using synthetic banking data exported from a relational SQLite database.

### Key Performance Indicators
- Total Customers: 100
- Total Transactions: 1,000
- Total Transaction Value: approximately 5 million RON
- Total Account Balance: approximately 4 million RON
- Average Transaction Value: approximately 4,980 RON
- Maximum Transaction Value: approximately 10,000 RON
- Deposit Share: 33.36%

### Dashboard Features
- Transaction value analysis by city
- Monthly transaction trends
- Interactive city filtering
- Dynamic KPI cards
- DAX measures using SUM, COUNTROWS, DISTINCTCOUNT, AVERAGE, MAX, CALCULATE and DIVIDE

### Data Model
Three relational tables connected through one-to-many relationships:

- `clienti` – customer information
- `conturi` – bank accounts
- `tranzactii` – financial transactions

### Technologies Used
Python | SQLite | SQL | Power BI | DAX

**Disclaimer:** All banking data used in this project is synthetic and does not represent real customers or transactions.
