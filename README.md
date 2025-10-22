# 🚀 SQL Query Optimization & Performance Tuning

This project demonstrates query performance optimization in SQL Server
using indexes and execution plan analysis.

---

## 🧱 Database Overview
**Tables:**
- Customers (10,000 records)
- Orders (100,000 records)

---

## ⚙️ Optimization Steps
1. Executed a heavy join query without indexes → high I/O and slow response time.
2. Created non-clustered indexes on `CustomerID` and `TotalAmount`.
3. Re-executed query → reduced execution time drastically.

---

## ⏱️ Results
| Stage | Execution Time | Logical Reads | Notes |
|--------|----------------|----------------|--------|
| Before Index | 2.8 sec | 120,000+ | Table Scan on Orders |
| After Index | 0.4 sec | 12,000 | Index Seek performed |

---

## 📊 Tools Used
- SQL Server Management Studio (SSMS)
- Execution Plans
- SET STATISTICS TIME / IO

---

## 🧠 Skills Demonstrated
- Query analysis and optimization  
- Index design and performance tuning  
- SQL Server execution plan interpretation  

---

Created by **Martín Vallejo** | 🇦🇷  
LinkedIn: [[Profile]](https://www.linkedin.com/in/martinvallejotorres/) | GitHub: [[Profile]](https://github.com/martinvallejotorres)
