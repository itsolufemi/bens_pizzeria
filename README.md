# 🍕 Ben's Pizzeria - Relational Database Design & SQL Analytics

## Overview
This project is a fully functional, custom-built MySQL relational database designed to manage the backend operations of a fictional pizza takeout and delivery business. Based on a brief from "Ben," the database tracks customer orders, ingredient inventory, and staff payroll. 

Currently, this repository focuses on the **Data Engineering and SQL Analytics** phase, showcasing database architecture, data normalization, and complex querying. 

## 🛠️ Tech Stack & Tools
* **Database Engine:** MySQL
* **Database Management:** Navicat / MySQL Workbench
* **Language:** SQL (DDL, DML, Advanced Joins, Views, Time/Date Functions)

## 🗄️ Database Architecture
The database is highly normalized to reduce redundancy, spanning three core operational areas:
1. **Order Management:** `orders`, `customers`, `addresses`, `menu`
2. **Inventory Management:** `inventory`, `recipe`, `ingredients`
3. **Staff Management:** `staff`, `shift`, `rota`

## 📊 Key Queries & Views
The `scripts/` folder contains the SQL code designed to feed a future Business Intelligence dashboard, including:
* **Order Analytics:** Multi-table `LEFT JOIN` queries to calculate total sales, average order value, peak hours, and sales by category.
* **Inventory Tracking:** Nested subqueries and views (e.g., `stock_one`) to calculate recipe costs, total ingredient weight used, and real-time stock depletion.
* **Payroll Calculations:** Utilizing complex `TIMEDIFF()` functions and chronological math to calculate accurate shift durations and daily staff costs.

## 🚀 Setup Instructions
To replicate this database environment locally and explore the transactional rows:
1. Clone this repository to your local machine.
2. Open your preferred database manager (e.g., Navicat).
3. Create a fresh, empty database named `bens_pizzeria`.
4. Run `SET FOREIGN_KEY_CHECKS = 0;` in a query tab to temporarily disable strict constraints.
5. Right-click your new database, select **Execute SQL File...**, and run `bens_pizzeria_v1.sql`.
6. Run `SET FOREIGN_KEY_CHECKS = 1;` to lock the relational structure back down.