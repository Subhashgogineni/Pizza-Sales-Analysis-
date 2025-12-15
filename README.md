# 🍕 Pizza Sales Analysis | SQL & Excel

## 📌 Project Overview 

This project performs an **end-to-end sales analysis** on a pizza restaurant dataset using **SQL Server** and **Microsoft Excel**. The goal is to transform raw transactional data into meaningful business insights by calculating key performance indicators (KPIs), analyzing customer ordering behavior, and visualizing trends through an interactive dashboard.

SQL is used for data querying, aggregation, and trend analysis, while Excel is used for data cleaning, transformation, and dashboard creation.

---

## 🛠️ Tools & Technologies

* **SQL Server** – Data querying and analysis
* **Advanced SQL** – Aggregations, joins, date & time functions
* **Microsoft Excel** – Data cleaning, calculations, dashboarding
* **Excel Functions** – TEXT, COUNTIF, Find & Replace

---

## 📂 Dataset Description

The dataset contains detailed pizza order information, including:

* Order ID & Order Date/Time
* Pizza Name, Category, and Size
* Quantity Ordered
* Unit Price & Total Price
* Ingredients

Each row represents an individual pizza item within an order.

---

## 🔍 SQL Analysis Performed

### Key Performance Indicators (KPIs)

* **Total Revenue**
* **Total Orders**
* **Total Pizzas Sold**
* **Average Order Value (AOV)**
* **Average Pizzas per Order**

### Trend Analysis

* **Daily Order Trends** (Day of Week)
* **Hourly Order Trends** (Peak ordering hours)
* **Monthly & Quarterly Filters** for time-based analysis

### Sales Breakdown Analysis

* **Revenue Contribution by Pizza Category**
* **Revenue Contribution by Pizza Size**
* **Total Pizzas Sold by Category**

### Product Performance

* **Top 5 Best-Selling Pizzas**
* **Bottom 5 Least-Selling Pizzas**

---

## 🧹 Data Cleaning & Transformation (Excel)

The following data cleaning steps were performed in Excel:

* Standardized pizza sizes using **Find & Replace**:

  * S → Small, M → Medium, L → Large, XL → X-Large, XXL → XX-Large
* Converted order dates into readable formats using **TEXT functions**
* Used **COUNTIF logic** to accurately calculate total orders without double-counting order IDs
* Ensured consistency in categorical fields for accurate analysis

---

## 📊 Excel Dashboard

An **interactive Excel dashboard** was built to visualize insights, including:

* KPI cards (Revenue, Orders, Pizzas Sold, AOV)
* Daily and hourly order trend charts
* Sales distribution by pizza category and size
* Top & bottom-selling pizzas
* Slicers for dynamic filtering by date (monthly, quarterly)

The dashboard enables quick identification of peak demand periods and best-performing products.

---

## 💡 Key Business Insights

* Orders peak during **lunch (12–1 PM)** and **evening hours (4–8 PM)**
* **Weekends**, especially Friday and Saturday, show the highest demand
* **Classic category pizzas** generate the highest revenue and order volume
* **Large-sized pizzas** contribute the most to total sales
* Certain pizzas consistently underperform, indicating opportunities for menu optimization

---

## 📈 Business Impact

This analysis helps stakeholders:

* Optimize staffing during peak hours
* Improve inventory and menu planning
* Identify high-revenue and low-performing products
* Make data-driven decisions using clear visual insights

---

## 🚀 Future Enhancements

* Automate data ingestion using ETL pipelines
* Build a Power BI or Tableau version of the dashboard
* Perform customer segmentation analysis
* Add predictive sales forecasting 

---

## 📎 How to Use This Repository

1. Review the SQL scripts to understand KPI and trend calculations
2. Explore the Excel file to see data cleaning steps and dashboard design
3. Use the insights section for interview or business case discussions

---

## 👤 Author

**Subhash Naidu Gogineni**
Aspiring Data Analyst / Data Science Intern

---

⭐ If you found this project useful, feel free to star the repository!
