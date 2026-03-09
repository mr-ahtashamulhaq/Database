# 🗄️ Database Learning Journey

> A complete, hands-on practice repo covering **MySQL** and **MongoDB** — from raw basics to aggregations, joins, subqueries, and more.

---

## 👤 About This Repo

This is a personal learning repo where I practiced database concepts by actually writing the queries — not just reading about them. Every file represents a topic I worked through, tested, and understood.

Two databases. One repo. Zero theory without practice.

---

## 🗂️ Repo Structure

```
mr-ahtashamulhaq-database/
├── 📄 01_database.sql
├── 📄 02_create-insert.sql
├── 📄 03_alter.sql
├── 📄 04_numeric_filters.sql
├── 📄 05_logical_conditions.sql
├── 📄 06_like_patterns.sql
├── 📄 07_null_checks.sql
├── 📄 08_in_not_in.sql
├── 📄 09_order_by_basics.sql
├── 📄 10_aliases_and_projection.sql
├── 📄 11_distinct_queries.sql
├── 📄 12_pagination_limit_offset.sql
├── 📄 13_filtered_reports.sql
├── 📄 14_global_aggregates.sql
├── 📄 15_customer_aggregates.sql
├── 📄 16_date_and_status_aggregates.sql
├── 📄 17_product_aggregates.sql
├── 📄 18_primary_and_foreign_key.sql
├── 📄 19_constraints.sql
├── 📄 20_data_integrity_fixes.sql
├── 📄 21_joins.sql
├── 📄 22_self_joins_and_union.sql
├── 📄 23_subqueries.sql
├── 📄 24_subqueries_advanced_set_logic.sql
├── 📄 25_update_replace_delet_truncate.sql
└── 📁 MongoDB/
    ├── 📄 00_intro.mongoDB.js
    ├── 📄 01-database.mongodb.js
    ├── 📄 02_collections.mongodb.js
    ├── 📄 03_sorting.mongodb.js
    ├── 📄 04_limit.mongodb.js
    ├── 📄 05_find.mongodb.js
    ├── 📄 06-insert.mongodb.js
    ├── 📄 07_delete.mongodb.js
    ├── 📄 08-update.mogodb.js
    ├── 📄 09_comparisonOperator.mongodb.js
    ├── 📄 010_logicalOperators.mongodb.js
    ├── 📄 11_index.mongodb.js
    └── 📄 12_aggregation.mongodb.js
```

---

## 🐬 MySQL — Topics Covered

| # | File | What's Inside |
|---|------|----------------|
| 01 | `01_database.sql` | 🏗️ CREATE, DROP, USE, SHOW databases |
| 02 | `02_create-insert.sql` | 📋 Table creation with constraints + INSERT |
| 03 | `03_alter.sql` | ✏️ ALTER TABLE — add, modify, rename, drop columns |
| 04 | `04_numeric_filters.sql` | 🔢 WHERE with numeric conditions and BETWEEN |
| 05 | `05_logical_conditions.sql` | 🔀 AND, OR logic in filters |
| 06 | `06_like_patterns.sql` | 🔍 LIKE, NOT LIKE, pattern matching |
| 07 | `07_null_checks.sql` | 🕳️ IS NULL, IS NOT NULL |
| 08 | `08_in_not_in.sql` | 📌 IN and NOT IN filters |
| 09 | `09_order_by_basics.sql` | 🔃 ORDER BY ASC and DESC |
| 10 | `10_aliases_and_projection.sql` | 🏷️ Column aliases with AS |
| 11 | `11_distinct_queries.sql` | ✅ DISTINCT values, unique domains |
| 12 | `12_pagination_limit_offset.sql` | 📄 LIMIT, OFFSET, pagination |
| 13 | `13_filtered_reports.sql` | 📊 Combined filters with aliases |
| 14 | `14_global_aggregates.sql` | ➕ COUNT, SUM, AVG, MIN, MAX |
| 15 | `15_customer_aggregates.sql` | 👥 GROUP BY with HAVING on customers |
| 16 | `16_date_and_status_aggregates.sql` | 📅 Date-based and status-based grouping |
| 17 | `17_product_aggregates.sql` | 🛒 Product revenue and quantity aggregates |
| 18 | `18_primary_and_foreign_key.sql` | 🔑 PRIMARY KEY and FOREIGN KEY setup |
| 19 | `19_constraints.sql` | 🔒 CASCADE, SET NULL, constraint management |
| 20 | `20_data_integrity_fixes.sql` | 🛡️ CHECK constraints, composite keys |
| 21 | `21_joins.sql` | 🔗 INNER, LEFT, RIGHT JOIN + multi-table joins |
| 22 | `22_self_joins_and_union.sql` | 🔁 SELF JOIN, UNION, UNION ALL |
| 23 | `23_subqueries.sql` | 🪆 Subqueries with IN, NOT IN, scalar |
| 24 | `24_subqueries_advanced_set_logic.sql` | ⚡ ANY, ALL, correlated and nested subqueries |
| 25 | `25_update_replace_delet_truncate.sql` | 🗑️ UPDATE, DELETE, REPLACE, TRUNCATE |

---

## 🍃 MongoDB — Topics Covered

| # | File | What's Inside |
|---|------|----------------|
| 00 | `00_intro.mongoDB.js` | 🧠 NoSQL concepts, ACID vs BASE, CAP theorem, Sharding |
| 01 | `01-database.mongodb.js` | 🏗️ Create, switch, drop databases |
| 02 | `02_collections.mongodb.js` | 📁 Create and drop collections |
| 03 | `03_sorting.mongodb.js` | 🔃 sort() ascending and descending |
| 04 | `04_limit.mongodb.js` | 📏 limit() with sort |
| 05 | `05_find.mongodb.js` | 🔍 find() with query and projection |
| 06 | `06-insert.mongodb.js` | ➕ insertOne(), insertMany(), nested docs |
| 07 | `07_delete.mongodb.js` | 🗑️ deleteOne(), deleteMany() |
| 08 | `08-update.mogodb.js` | ✏️ updateOne(), updateMany(), replaceOne(), $set, $unset, $inc, $rename |
| 09 | `09_comparisonOperator.mongodb.js` | ⚖️ $gt, $gte, $lt, $lte, $ne, $in, $nin |
| 10 | `010_logicalOperators.mongodb.js` | 🔀 $and, $or, $not, $nor |
| 11 | `11_index.mongodb.js` | ⚡ createIndex() for faster queries |
| 12 | `12_aggregation.mongodb.js` | 🔬 Aggregation pipeline: $match, $project, $group, $sort, $limit, $skip, $count |

---

## 🧰 Tools Used

- 🐬 **MySQL** — Relational database
- 🍃 **MongoDB** — Document-based NoSQL database
- 🖥️ **MySQL Workbench** — GUI for MySQL
- 🌿 **MongoDB Compass / mongosh** — GUI and shell for MongoDB

---

## 🚀 How to Use

**For MySQL files:**
```bash
# Open MySQL Workbench or terminal
mysql -u root -p

# Run any file
source /path/to/file.sql
```

**For MongoDB files:**
```bash
# Open mongosh
mongosh

# Copy and run queries from any .js file
```

---

## 💡 Key Concepts Quick Reference

**MySQL**
- `JOIN` types — INNER, LEFT, RIGHT, SELF
- `GROUP BY` + `HAVING` — filter after aggregation
- Subqueries — scalar, correlated, ANY/ALL
- Constraints — PK, FK, CHECK, UNIQUE, NOT NULL
- `LIMIT` + `OFFSET` — pagination

**MongoDB**
- Embedded vs Reference data models
- Aggregation pipeline stages
- Comparison + Logical operators
- `$set`, `$unset`, `$inc`, `$rename` in updates
- Index creation for query performance

---

## 📬 Connect

**Ahtasham Ul Haq** — AI Engineer & Programmer

[![GitHub](https://img.shields.io/badge/GitHub-mr--ahtashamulhaq-181717?style=flat&logo=github)](https://github.com/mr-ahtashamulhaq)
[![Email](https://img.shields.io/badge/Email-mr.ahtashamulhaq@gmail.com-EA4335?style=flat&logo=gmail&logoColor=white)](mailto:mr.ahtashamulhaq@gmail.com)

---

<p align="center">Built with 🧠 curiosity and a lot of <code>SELECT *</code></p>