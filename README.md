# 🛒 Indian E-Commerce Analytics Platform

### End-to-End SQL Data Analytics Project using PostgreSQL

A complete business analytics project built from scratch using PostgreSQL, featuring database design, synthetic data generation, KPI reporting, customer segmentation, revenue analysis, window functions, and data quality validation.

<div align="center">

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18-336791?style=for-the-badge&logo=postgresql)
![SQL](https://img.shields.io/badge/SQL-Analytics-blue?style=for-the-badge)
![Data Analytics](https://img.shields.io/badge/Data-Analytics-success?style=for-the-badge)
![Window Functions](https://img.shields.io/badge/Window-Functions-orange?style=for-the-badge)
![Business Intelligence](https://img.shields.io/badge/Business-Intelligence-purple?style=for-the-badge)
![License](https://img.shields.io/badge/Portfolio-Project-green?style=for-the-badge)

</div>

## Project Overview

This project walks through a complete SQL-based data analytics workflow built entirely on PostgreSQL. Rather than pulling in an existing dataset, I designed and populated a synthetic Indian e-commerce database from scratch using only SQL — no external CSVs, no third-party data sources.

The project spans the full analyst pipeline:

- Database design and schema setup
- Synthetic data generation
- Data validation
- Revenue, product, and customer analysis
- Customer segmentation
- Window function techniques
- Business KPI reporting

---
## Project Highlights

- Designed a relational PostgreSQL database from scratch
- Generated a synthetic e-commerce dataset entirely using SQL
- Analyzed 1000 customers, 5000 orders, and 10000 order items
- Performed revenue, customer, product, and monthly trend analysis
- Applied Window Functions including ROW_NUMBER(), RANK(), DENSE_RANK(), and PARTITION BY
- Identified and documented data-quality issues affecting KPI calculations

--- 
## Database Schema

The database is structured around four core tables:

**Customers** — holds profile information for each registered user.

**Products** — stores the product catalog, including category and pricing details.

**Orders** — records each purchase transaction tied to a customer.

**Order Items** — captures the individual products purchased within every order.

The relationships flow in one direction:

```
Customers → Orders → Order Items → Products
```

---

## Dataset Scale

| Metric      |  Count |
| ----------- | -----: |
| Customers   |  1,000 |
| Products    |    100 |
| Orders      |  5,000 |
| Order Items | 10,000 |

---
## Dataset Statistics
## Data Validation Findings

Several data quality checks were performed on the generated dataset.

### Key Finding

Out of 5000 generated orders:

- 4313 orders contained purchased products
- 687 orders contained no associated order items

Revenue-related KPIs were therefore calculated using only orders that contained products to ensure accurate business reporting.

---
## Business Questions Answered

### Revenue Analysis

- What is the platform's total revenue?
- What does the Average Order Value (AOV) look like?
- Which product categories bring in the most revenue?

### Product Analysis

- Which products rank highest by revenue?
- Within each category, which product leads?

### Customer Analysis

- Who are the top customers by lifetime value?
- What percentage of registered users actually placed an order?
- How can customers be grouped by their revenue contribution?

### Time-Series Analysis

- What was the strongest revenue month?
- What was the weakest, and why?
- How does revenue shift across different time periods?

---

## SQL Concepts Covered

### Fundamentals

`SELECT` · `WHERE` · `ORDER BY` · `LIMIT`

### Aggregation

`COUNT()` · `SUM()` · `AVG()` · `GROUP BY`

### Joins

`INNER JOIN` across multiple tables

### Data Generation

`generate_series()` · `random()` · Array operations

### Window Functions

`ROW_NUMBER()` · `RANK()` · `DENSE_RANK()` · `PARTITION BY`

### Business Logic

`CASE` statements for segmentation, KPI computation, and ranking

---

## Key Findings

| Metric              | Result          |
| ------------------- | --------------- |
| Total Revenue       | ₹77.56 Million+ |
| Average Order Value | ₹18,000+        |
| Top Product         | Product_97      |
| Top Category        | Electronics     |
| Top Customer        | Customer_187    |
| Conversion Rate     | 99.4%           |
| Best Revenue Month  | June 2025       |

---

## Repository Structure

```
Indian-Ecommerce-Analytics/
│
├── README.md
│
├── SQL/
│   ├── 01_database_setup.sql
│   ├── 02_data_generation.sql
│   ├── 03_data_validation.sql
│   ├── 04_revenue_analysis.sql
│   ├── 05_product_analysis.sql
│   ├── 06_customer_analysis.sql
│   ├── 07_window_functions.sql
│   ├── 08_customer_segmentation.sql
│   └── 09_monthly_analysis.sql
│
├── Screenshots/
│
└── Insights/
    └── business_insights.md
```

---

## What's Next

A few directions I'm planning to take this project further:

- Build a Power BI dashboard on top of the existing queries
- Add customer retention and cohort analysis
- Introduce RFM (Recency, Frequency, Monetary) segmentation
- Create PostgreSQL Views and Materialized Views for performance optimization
- Build an interactive KPI dashboard

---

## Author

**Mohil Wankar**  
Data Analytics · SQL · PostgreSQL · Business Analytics
