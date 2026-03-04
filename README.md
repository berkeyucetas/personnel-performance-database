# Personnel Performance Management Database

This project is a comprehensive SQL Server database designed to model the **Human Resources and Performance Management processes of a corporate organization**.

The goal is not only to create tables, but to design a **scalable, normalized, and enterprise-level relational database architecture** that could be used in real-world systems.

The database provides an integrated model that covers employee management, organizational structure, performance evaluation systems, salary structures, and operational HR processes.

---

# Project Purpose

This project was developed to demonstrate how a company’s human resources infrastructure can be designed at the database level.

Inspired by real-world enterprise systems, the following structures were modeled:

- Organizational hierarchy
- Department and position structure
- Performance evaluation system
- Salary and bonus management
- Employee leave processes
- Training and development tracking
- Global branch structure

---

# Database Scope

The database consists of **27 relational tables**.

These tables are designed to model a company's organizational structure, employee management, performance evaluations, and operational processes.

---

## Organizational Structure

Tables representing the corporate structure of the company:

- Departments
- Positions
- SalaryGrades
- Branches
- Roles
- OrganizationHierarchy

This structure enables modeling of departments, positions, and managerial hierarchies within the organization.

---

## Human Resources Management

Tables responsible for managing core employee data:

- Employees
- EmployeeSalaries
- PromotionHistory
- DisciplinaryActions
- Users
- AuditLogs

These tables are designed to track employee career progress, salary history, disciplinary records, and system users.

---

## Performance Management

Tables used to measure and analyze employee performance:

- PerformancePeriods
- PerformanceReviews
- PerformanceScores
- PerformanceCriteria
- PerformanceCriteriaCategories
- Goals
- KPIs
- GoalsKPIs

This structure allows employee performance to be evaluated periodically and analyzed based on defined performance criteria.

---

## Operational Processes

Tables managing day-to-day operational HR processes:

- AttendanceRecords
- Leaves
- LeaveTypes
- Trainings
- EmployeeTrainings
- BonusPayment
- Notifications

These tables are used to manage employee leave, training programs, attendance records, and bonus payments.

---

# Database Design Features

The following database design principles were applied in this project:

- Normalized relational database structure
- Foreign key relationships
- Check and Unique constraints
- Indexing strategy for performance optimization
- Organizational hierarchy modeling
- Global company structure simulation
- Modular SQL script architecture

---

# Global Company Simulation

The database is designed to simulate the organizational structure of a global software company.

The system includes branches located in the following countries:

- Turkey
- Germany
- France
- United States
- Italy
- India
- Japan

Total number of branches: **16**

This structure enables modeling of global teams and distributed organizational systems.

---

# Project Structure

The project is organized using modular SQL scripts.

personnel-performance-database
│
README.md
PersonnelPerformanceDB.sql
│
database
│   01_create_database.sql
│   02_create_tables.sql
│   03_constraints.sql
│   04_indexes.sql
│   05_foreign_keys.sql
│   06_seed_data.sql
│
queries
│   01_employee_overview.sql
│   02_department_employee_counts.sql
│   03_employee_salary_analysis.sql
│   04_performance_reports.sql
│   05_leave_reports.sql
│   06_training_reports.sql
│   07_management_reports.sql
│
diagrams
│   database-diagram.png


This structure allows the database to be easily installed, updated, and maintained.

---

# Technologies Used

- Microsoft SQL Server
- T-SQL
- SQL Server Management Studio

---

# Developer

Berke Yücetaş

This project was developed as a SQL database design practice aimed at modeling **real-world enterprise database architectures and scalable relational systems**.
