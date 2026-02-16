# 🎮 Strategic Game Industry Analytics: A Complete Data Engineering & BI Pipeline

## 📌 Project Overview
This project is an end-to-end data intelligence solution designed to analyze decades of video game market trends. By leveraging a modern data stack (**Python, MySQL, and Power BI**), I transformed a raw, unstructured dataset into a high-performance relational database and an interactive strategic dashboard. The project focuses on the correlation between critic quality and global revenue, providing actionable insights for market positioning.

## 🛠️ The Professional Tech Stack
* **Data Engineering:** Python (Pandas, NumPy, SQLAlchemy, PyMySQL).
* **Data Warehousing:** MySQL (Relational Schema Design & Advanced SQL Auditing).
* **Business Intelligence:** Power BI (Advanced DAX, Power Query & UI/UX Design).

---

## 🚀 Phase 1: Heavy-Duty Data Engineering & ETL (Python)
In this phase, I acted as the **Data Architect**, ensuring the raw `vgchartz-2024.csv` was meticulously cleaned and prepared for a professional SQL environment.

### 1. Advanced Data Cleaning & Wrangling
* **Structural Normalization:** Applied vectorized string operations to strip hidden whitespaces and inconsistent characters in `Titles`, `Genres`, and `Publishers` to ensure 100% join accuracy and clean grouping.
* **Intelligent Null & Missing Value Management:** * Conducted a deep audit of `NaN` values in critical columns like `Critic_Score` and `User_Score`.
    * Implemented logic-based handling for missing categorical data (Developers/Publishers) to avoid skewing market share distribution or creating "Unknown" clusters.
* **Precision Type Casting & Scaling:** * Standardized `Release_Year` and `Last_Update` temporal formats.
    * Fixed numerical inconsistencies where sales figures were stored as objects/strings, ensuring that calculations for `Global_Sales` and regional breakdowns are mathematically precise.
* **Feature Refinement:** Consolidated and mapped platform naming conventions to enable meaningful cross-platform comparisons (e.g., aligning legacy console variations).

### 2. Automated SQL Pipeline (The Bridge)
I moved away from manual "Import Wizards" to build a reproducible engineering pipeline:
* **SQLAlchemy & PyMySQL Integration:** Established a robust programmatic connection between the Python environment and the **MySQL Server** using `create_engine`.
* **Dynamic Schema Mapping:** Programmatically pushed the cleaned DataFrame to MySQL using the `to_sql` method. This automated the creation of the database schema, ensuring that data types (Doubles, Varchars, Integers) were perfectly optimized for the relational engine.

---

## 🚀 Phase 2: Deep Exploratory Data Analysis (MySQL)
Once the data was hosted in the **MySQL Warehouse**, I moved from engineering to **Analytical Deep-Diving**, using SQL as the primary engine for auditing and business logic.

### 1. Data Auditing & Integrity Verification
* **The "Data Integrity" Discovery:** I authored complex **Year-over-Year (YoY)** volume queries to check the distribution of game releases. This revealed a critical anomaly: **2019 and 2020** had a 95% drop in records compared to 2018. 
* **The Strategic Business Decision:** I made the executive call to prune 2019-2020 data. This prevented **"Artificial Trend Deflation,"** ensuring that stakeholders are presented with a verified, consistent growth trajectory rather than a misleading market collapse.

### 2. Advanced Analytical Queries & Business Logic
* **Dynamic Classification with `CASE` Statements:** I utilized `CASE` logic to create custom business categories, such as "Success Tiers" and platform groupings, allowing for a granular view that goes beyond raw data.
* **Performance Benchmarking:** Developed sophisticated aggregations using `SUM()`, `AVG()`, and `COUNT()` to calculate:
    * **Sales Efficiency:** Identifying which publishers generate the highest revenue *per title*.
    * **Market Share Concentration:** Determining the revenue percentage owned by top-tier publishers.
* **Quality-Revenue Correlation:** Wrote queries to "bucketize" `Critic_Scores`, providing the analytical foundation for the "Quality Multiplier" insight used in the final dashboard.
* **Consistency Validation:** Ran cross-checks between regional sales (NA, JP, PAL) and Global totals within the SQL environment to ensure zero discrepancies before the visualization phase.

---

## 🚀 Phase 3: Strategic Business Intelligence (Power BI)
The final stage was the creation of a two-page **Interactive Discovery Hub** with a professional **Neon-Dark Theme**.

### 1. Dashboard Architecture & UX
* **Summary Page (Executive View):** Real-time tracking of Global Revenue, Genre Market Share, and Console Lifecycles.
* **Deep Dive Page (Analytical Core):** Utilizing **Scatter Plots** to visualize the "Quality vs. Revenue" correlation and **Matrix Heatmaps** to identify market gaps.

### 2. Advanced Analytics & Problem Solving
* **Dynamic Axis Control:** After the SQL discovery, I utilized **Power Query** to hard-limit the data timeframe and converted the X-Axis to **Categorical**, ensuring a clean finish at the last verified data point (2018).
* **Visual Hierarchy:** Implemented a **Heatmap Matrix** (Hex: `#BD40FF`) with custom conditional formatting to pinpoint "Profit Hotspots" where specific genres dominate on certain platforms.

---

## 📈 Key Business Insights (The "So What?")
* **The Quality Multiplier:** My analysis proves that games with a Critic Score of **8.5+** generate significantly higher long-term revenue, proving that quality is the primary driver of market longevity.
* **Platform Specialization:** Nintendo dominates the "Platformer" niche, while Sony and Microsoft show high-density competition in the "Action/Shooter" segments.
* **Market Evolution:** Visualized the historical shift from Platformers (90s) to Action-Adventure dominance (2010s), providing context for future investment trends.

---

## 📸 Dashboard Preview
<p align="center">
  <img src="Screenshots/Summary.png" width="900" alt="Market Summary">
  <br>
  <i>Figure 1: Executive Market Summary</i>
</p>

<p align="center">
  <img src="Screenshots/Details.png" width="900" alt="Deep Dive Analytics">
  <br>
  <i>Figure 2: Performance Matrix & Quality Correlation</i>
</p>

---

## 📁 Repository Structure
```bash
├── Data/               # Raw and Cleaned datasets (.csv)
├── Scripts/            # Jupyter Notebooks (Pyhton)
├── SQL/                # MySQL Schema exports & Analytical Queries
├── Dashboard/          # Power BI (.pbix) Interactive Project
└── Screenshots/        # Visual documentation for the README
```
---

## 📂 Data Source
The dataset used in this project is sourced from **Kaggle**:
* **Dataset Name:** [Video Game Sales 2024](https://www.kaggle.com/datasets/asaniczka/video-game-sales-2024/data)
* **Author:** [asaniczka](https://www.kaggle.com/asaniczka)
* **Description:** This dataset contains comprehensive records of video game sales, ratings, and release dates up to 2024.


---
## 👨‍💻 Author

**Bilal Jabasini** 

*Data Analyst*

[GitHub Profile](https://github.com/bilaljab) | [Email](mailto:bilal.jabasini@gmail.com) | [Linkedin](https://linkedin.com/in/bilal-jabasini)

This project is part of my **Data Analytics Portfolio**.
