# 🐬 MySQL Master Repository

Welcome to my personal MySQL learning and reference ecosystem. This repository contains structured scripts covering foundational, intermediate, and advanced relational database concepts—from basic table creations to complex automation objects.

---

## 🗂️ Repository Structure

The project is organized into three distinct directories based on different stages of my development workflow:

### 🏝️ 1. `Bikini/` (The Core Building Blocks)
A highly detailed, step-by-step breakdown of individual SQL mechanisms. Each script focuses entirely on a standalone concept:
* **01 to 05:** Database/Table instantiation, data insertion, selection filtering, updates, and deletions.
* **06 to 13:** Transaction control limits (TCL), default/current system values, and data integrity constraints (`UNIQUE`, `NOT NULL`, `CHECK`, `DEFAULT`, `PRIMARY KEY`, `AUTO_INCREMENT`).
* **14 & 15:** Relational mapping via `FOREIGN KEY` constraints and advanced horizontal data stitching (`JOINS`).
* **16 to 20:** Aggregation / Scalar functions, logical evaluations, pattern-matching `WildCards`, structural sorting (`ORDER BY`), and payload data pacing (`LIMIT`).
* **21 to 27:** Set combinations (`UNIONS`), recursive referencing (`SELF_JOINS`), virtual reporting abstractions (`VIEWS`), database optimization indexes, localized inner logic dependencies (`SUBQUERIES`), array groupings (`GROUP BY`), and analytical bottomline rows (`ROLLUP`).
* **28 to 30:** Lifecycle automation schemas including target cascading rules (`ON DELETE`), reusable transaction compilation frames (`STORED PROCEDURES`), and auto-trigger operational dependencies (`TRIGGERS`).

### 📦 2. `Mydb/`
* **`full_practice.sql`**: A unified comprehensive testing field compiling overlapping table dependencies to simulate production scenarios.

### 📝 3. `Sql_Practice/`
* **`a7th_Practice.sql`**: The master compilation lab file tracking syntax verification paradigms, optimizations, and deep conceptual notes across the entire SQL roadmap.

---

## 💻 How to Run SQL in the Terminal (Fedora Linux)

You can execute entire script files directly from your shell path using two different methods:

### Method A: Straight from your Bash Terminal (Fastest)
You can pipe any script cleanly into MySQL right from your native Fedora shell prompt without manually logging in:
```bash
mysql -u root -p SchoolDB < ./Sql_Practice/a7th_Practice.sql
