# Business Insights

## Project Overview

This project was built entirely within PostgreSQL, using a synthetic Indian e-commerce dataset that I generated from scratch. The database covers a realistic transaction environment with the following scale:

- 1,000 customers
- 100 products
- 5,000 orders
- 10,000 order items

The goal was to take the database from zero — schema design, data generation, validation — all the way through to meaningful business reporting, using nothing but SQL.

---

## Key Findings

### 1. Total Revenue

Across all transactions in the dataset, the platform recorded total revenue of roughly ₹7.756 crores or **₹77.56 Million**.

### 2. Average Order Value (AOV)

The AOV came out to around **₹18,000 per order**, which points to a platform where customers tend to make high-value purchases rather than small, frequent buys.

### 3. Top Revenue-Generating Product

**Product_97** led the pack in terms of revenue contribution:

- **Category:** Electronics
- **Revenue:** ₹1.58 Million+

### 4. Category-Level Performance

Electronics topped the revenue charts overall. That said, revenue was reasonably spread across product categories — the platform isn't over-reliant on any single segment, which is a healthy sign from a business continuity perspective.

### 5. Top Customer by Lifetime Value

**Customer_187** was the single highest-value customer on the platform, contributing over **₹275,000** in lifetime revenue.

### 6. Customer Conversion Rate

Of the 1,000 registered users, **994 placed at least one order** — translating to a conversion rate of **99.4%**. In most real-world scenarios, this would be an exceptionally strong number.

### 7. Customer Segmentation

Customers were divided into three tiers based on their purchasing behavior:

- **VIP Customers**
- **Regular Customers**
- **Low Value Customers**

This segmentation lays the groundwork for differentiated marketing strategies and targeted retention efforts.

### 8. Monthly Revenue Trend

- **Peak month:** June 2025 — approximately **₹3.97 Million**
- **Lowest recorded month:** June 2026 — though this was an incomplete month and shouldn't be weighed against full calendar months

---

## SQL Concepts Applied

The project touched a broad range of SQL techniques:

**Database Design**

- Data modeling, primary keys, foreign keys

**Data Engineering**

- Synthetic data generation, validation checks

**Querying & Analysis**

- Aggregations, joins, multi-table joins
- `CASE` statements for conditional logic
- Date functions for time-based analysis

**Advanced SQL**

- Window functions: `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`
- `PARTITION BY` for segment-level calculations

**Business Reporting**

- KPI analysis across revenue, conversion, and customer value metrics

---

## Data Quality Observation

During validation, it was identified that 687 generated orders contained no associated order items.

As these orders generated no revenue, revenue-based KPIs such as Average Order Value (AOV) were calculated using only orders that contained purchased products.

Orders Created: 5000

Orders With Products: 4313

Orders Without Products: 687

---

## Conclusion

This project covers the full analyst workflow within PostgreSQL — from designing the schema and populating it with realistic synthetic data to writing queries that surface actionable business insights. It reflects how SQL alone, without external tools, can drive end-to-end data analysis at a meaningful scale.
