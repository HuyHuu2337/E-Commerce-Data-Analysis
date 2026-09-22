🛒 E-Commerce Performance Analysis Dashboard

📌 Project Overview

This project demonstrates an end-to-end data analytics pipeline for a simulated E-Commerce business. The goal is to transform raw, messy transactional data into an interactive and visually appealing Executive Dashboard.

By integrating Python, SQL, and Power BI, this project successfully cleanses data, calculates key performance indicators (KPIs), and uncovers actionable insights regarding sales trends, product categories, and customer satisfaction.

🛠️ Tech Stack & Workflow

Data Extraction & Generation: Python (Pandas, NumPy) to simulate a realistic dataset of 5,000 e-commerce orders.

Data Transformation (ETL): SQLite to clean the data:

Handled missing values (e.g., replacing NULL ratings with 0).

Fixed typographical errors in order statuses (e.g., 'Deliverd' -> 'Delivered').

Created calculated columns (e.g., conditionally calculating Net_Revenue only for delivered orders).

Data Visualization: Power BI to build an interactive dashboard:

DAX Measures: Total Orders, GMV, Net Revenue, Cancellation Rate.

UI/UX Design: Earth-tone color palette, clear layout division (Navigation/Slicers on the left, KPIs and Trends on the right).

📂 Folder Structure
```text
E-Commerce_Performance_Analysis/
│
├── Data/
│   ├── Cleaned_Ecommerce_Data.csv   # Final dataset used for Power BI
│   └── ecommerce_db.sqlite          # SQLite database containing raw and clean tables
│
├── Scripts/
│   ├── data_processing.ipynb        # Python script for data generation and execution
│   └── clean_data.sql               # SQL queries for data cleaning and transformation
│
└── Dashboard/
    ├── Ecommerce_Dashboard.pbix     # Power BI source file
    └── Ecommerce_Dashboard.pdf      # Static PDF version of the dashboard


❓ Business Questions Answered

The Power BI dashboard is designed to answer the following key business questions:

Overall Performance: What is the total volume of orders, Gross Merchandise Value (GMV), and actual Net Revenue?

Product Strategy: Which product categories contribute the most to the company's revenue?

Trend Analysis: How does Net Revenue fluctuate on a monthly basis? Are there specific peak or drop months?

Logistics & Satisfaction: Is there a correlation between the number of delivery days and the customer rating?

Risk Management: What is the current order cancellation rate across different regions?

💡 Key Insights

(Note: These insights are based on the generated dataset shown in the dashboard)

Top Performing Category: The Mobile & Accessories (Điện thoại & Phụ kiện) category drives the highest revenue, accounting for over 40% of the total Net Revenue.

Sales Volatility: The Monthly Trend Line reveals significant fluctuations, highlighting a sharp decline in July followed by a strong recovery in August.

Delivery Impact: The scatter plot analysis indicates the distribution of customer ratings across different delivery times, providing a foundation to investigate if delayed shipping (10+ days) strictly correlates with 1-2 star reviews.

Interactive Filtering: Using the Slicers, executives can dynamically drill down into specific regions (e.g., Ho Chi Minh City) or categories to see localized performance metrics instantly.

🚀 How to View the Project

Quick View: Open the Dashboard/Ecommerce_Dashboard.pdf to see a static snapshot of the report.

Interactive View: Download the Dashboard/Ecommerce_Dashboard.pbix file and open it with Power BI Desktop to interact with the slicers, tooltips, and cross-filtering features.

Code Review: Check the Scripts/ folder to review the ETL logic written in Python and SQL.

Developed as a Portfolio Project demonstrating Data Processing, SQL, and Data Visualization skills.
