# 🏆 Adhoc Insights: Atliq Hardwares Analytics  

This project focuses on performing **ad-hoc data analysis** for **Atliq Hardwares**, a global hardware manufacturing company. The goal was to extract actionable insights from the company's sales, manufacturing, and customer data using **SQL**. The project involved writing complex queries to answer 10 specific business questions, optimizing database performance, and generating reports for decision-making.

---

## 📌 **Project Overview**  
- **Objective**: Provide actionable insights into sales, manufacturing costs, customer performance, and product trends using SQL.  
- **Database**: `gdb023` (Atliq Hardwares Database)  
- **Tools Used**: MySQL, Power BI (for visualization, if applicable).  
- **Key Deliverables**:  
  - Ad-hoc SQL queries to answer 10 business questions.  
  - Insights into sales trends, manufacturing costs, and customer performance.  
  - Optimized queries for performance and readability.  

---

## 📂 **Database Schema**  

The database consists of **6 main tables**:  

| Table Name                  | Description                                  |
|-----------------------------|----------------------------------------------|
| `dim_customer`              | Customer-related data (e.g., customer code, market, region). |
| `dim_product`               | Product-related data (e.g., product code, division, segment). |
| `fact_gross_price`          | Gross price information for each product.    |
| `fact_manufacturing_cost`   | Manufacturing costs for each product.        |
| `fact_pre_invoice_deductions` | Pre-invoice discounts for customers.       |
| `fact_sales_monthly`        | Monthly sales data for each product.         |

---

## 🔍 **Ad-Hoc Requests & Insights**  

### **Request 1**: List of markets where "Atliq Exclusive" operates in the APAC region.  
- **Insight**: Identified **9 markets** in the APAC region, including India, Japan, and Australia.  

### **Request 2**: Percentage increase in unique products in 2021 vs. 2020.  
- **Insight**: Unique products increased by **36.33%** from 2020 to 2021.  

### **Request 3**: Unique product counts by segment, sorted in descending order.  
- **Insight**: The **Notebook** segment had the highest product count (**116**), followed by Accessories (**104**).  

### **Request 4**: Segment with the most increase in unique products (2021 vs. 2020).  
- **Insight**: The **Notebook** segment saw the highest increase (**102** additional products).  

### **Request 5**: Products with the highest and lowest manufacturing costs.  
- **Insight**:  
  - **Highest Cost**: AQ HOME Allin1 Gen 2 (**$240.54**).  
  - **Lowest Cost**: AQ Master wired x1 Ms (**$0.89**).  

### **Request 6**: Top 5 customers with the highest average pre-invoice discount in India (2021).  
- **Insight**: **Flipkart** received the highest discount (**30.83%**).  

### **Request 7**: Monthly gross sales for "Atliq Exclusive".  
- **Insight**: **October 2021** was the highest-performing month (**$5,660.02**).  

### **Request 8**: Quarter with the maximum total sold quantity in 2020.  
- **Insight**: **Q1 2020** had the highest sales volume (**21,481,813 units**).  

### **Request 9**: Channel contributing the most to gross sales in 2021.  
- **Insight**: The **Direct** channel contributed **47.48%** of gross sales.  

### **Request 10**: Top 3 products in each division by sold quantity (2021).  
- **Insight**:  
  - **N & S Division**: AQ Pen Drive DRC (2,492,352 units).  
  - **P & A Division**: AQ Gamers Ms (4,043,543 units).  
  - **PC Division**: AQ Digit (203,954 units).  

---

## 🛠️ **Technical Learnings**  

### **SQL Concepts Applied**  
- **Joins**: Combined data from multiple tables using `INNER JOIN`, `LEFT JOIN`, and `RIGHT JOIN`.  
- **Aggregations**: Used `SUM`, `COUNT`, and `AVG` for calculations.  
- **CTEs (Common Table Expressions)**: Simplified complex queries.  
- **Window Functions**: Applied `RANK()` and `DENSE_RANK()` for ranking products.  
- **Subqueries**: Nested queries for advanced filtering.  
- **Performance Optimization**: Used indexing and query structuring for faster execution.  

---

## 🚀 **How to Use This Repository**  

1. **Clone the Repository**:  
   ```bash
   git clone https://github.com/your-username/Atliq-Hardwares-Analytics.git
