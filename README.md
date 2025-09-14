# 📊 Hotel Bookings Analytics with SQL & Power BI

## 🚀 Project Overview

This project is an **end-to-end analytics solution** that uses **Google BigQuery (SQL)** and **Microsoft Power BI** to analyze hotel booking trends, cancellations, revenue, and customer behavior. It replicates the workflow of a **real-world business intelligence pipeline**, showcasing both data engineering and data visualization skills.

The dataset is based on the **Hotel Booking Demand Dataset (Kaggle)**, adapted and stored in **Azure SQL / BigQuery** for querying, cleaning, and transformation before visualization.

---

## 🗂 Project Structure

```
├── SQL/                         # All SQL scripts used in BigQuery / Azure SQL
│   ├── Basic Overview.sql
│   ├── Monthly Booking Trends.sql
│   ├── Cancellation Rate by Market Segment.sql
│   ├── Revenue per Country.sql
│   ├── Average ADR by Distribution Channel.sql
│   ├── Top Countries by Bookings.sql
│   ├── Revenue & Cancellation Trend.sql
│   ├── Repeat Guests vs New Guests.sql
│   ├── Cleaning Script.sql
│   └── ... (more queries)
│
├── Power BI/                    # Power BI report files
│   ├── Hotel_Bookings.pbix
│   └── Exported visuals/screenshots
│
├── LICENSE                      # Open-source license (MIT)
└── README.md                    # Project documentation
```

---

## 🛠 Tools & Technologies

* **SQL** (BigQuery / Azure SQL) → Data storage, cleaning, transformations, KPI queries.
* **Power BI** → Interactive dashboards and business intelligence reporting.
* **GitHub** → Version control, portfolio showcase.
* **Dataset** → Hotel Booking Demand dataset (public Kaggle source).

---

## 📈 Key Features

### 🔹 Data Engineering (SQL)

* Cleaning raw booking data and handling missing values.
* Joining tables and enriching with country lookups.
* Creating KPIs for bookings, cancellations, ADR (Average Daily Rate), and lead time.
* Writing analytical queries for trend analysis.

### 🔹 Data Visualization (Power BI)

* **Total Bookings KPI** → Card visualization.
* **Monthly Booking Trends** → Line chart of booking volume across months.
* **Revenue by Year** → Bar chart with yearly revenue comparison.
* **Cancellation Rate by Market Segment** → Bar chart + KPI card.
* **Bookings by Country** → Map visualization.
* **ADR by Distribution Channel** → Comparison of pricing by channel.
* **Repeat vs New Guests** → Guest segmentation.
* **Revenue vs Cancellation Trend** → Dual-axis combo chart.
* **Top 10 Countries by Bookings** → Ranking of most frequent customers.

---

## 📊 Dashboard Preview

(Screenshots of the Power BI dashboards should go here – you can export from Power BI and upload to GitHub under `/Power BI/visuals/`)

---

## 🧠 Insights & Business Value

* **Seasonality:** Peak bookings in summer months, lower in winter.
* **Cancellation Patterns:** Highest among *online travel agencies (OTA)*.
* **Revenue Drivers:** Portugal, UK, France, and Spain are the top contributors.
* **Customer Segmentation:** Majority are *new guests*, repeat guests form a small share.
* **Distribution Channels:** GDS has the highest ADR, but Direct bookings are more stable.

---

## ⚙️ How to Run This Project

### Option 1: Run SQL Queries

1. Clone the repository:

   ```bash
   git clone https://github.com/Amoulas55/hotel-bookings-powerbi.git
   ```
2. Open any `.sql` file in **BigQuery** or **Azure SQL**.
3. Run queries to reproduce the results.

### Option 2: Explore Power BI Report

1. Open the `Hotel_Bookings.pbix` file in Power BI Desktop.
2. Refresh data connections if needed.
3. Interact with the dashboards.

---

## 📚 Learning Outcomes

* Designing **SQL queries** for real business KPIs.
* Building **ETL-like cleaning scripts** for analytics.
* Creating **interactive dashboards** in Power BI.
* Structuring a project for **portfolio readiness on GitHub**.

---

## 📜 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

## 🙌 Acknowledgements

* Dataset: [Hotel Booking Demand Dataset (Kaggle)](https://www.kaggle.com/jessemostipak/hotel-booking-demand)
* Microsoft Power BI & Azure SQL
* Google BigQuery

---

## 👤 Author

**Angelos Moulas**
Data Scientist | Business Intelligence Enthusiast
[LinkedIn](https://www.linkedin.com/in/angelos-moulas/) | [GitHub](https://github.com/Amoulas55)
