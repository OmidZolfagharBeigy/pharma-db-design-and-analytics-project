# 🏥 User Story: Pharma Database Design & Analytics

## 📌 Project Overview
A pharmaceutical company has requested a relational database to manage their operational and analytical data.  
The system must be built using **PostgreSQL**.  

The solution must support patient management, physician records, pharmacy operations, prescription tracking, and contract management — along with several analytical queries to support data-driven decision making.

---

## 🛠️ Database Design Requirements

### 👤 Patient Management
- Each patient is identified by their national ID.
- Patient information includes name, address, and age.
- The system must store patient demographics for analytical purposes.

### 👨‍⚕️ Physician Management
- Each physician is identified by their national ID.
- Physician information includes name and specialization(s).
- A physician may have multiple specializations.

### 🏢 Pharmaceutical Company Management
- Each pharmaceutical company is identified by name and phone number.
- Companies manufacture and supply drugs.

### 💊 Drug Management
- Each drug has a brand name and formula.
- A drug is sold by one pharmaceutical company.
- The brand name distinguishes drugs within each company.

### 🏪 Pharmacy Management
- Each pharmacy has a name, address, and phone number.
- Pharmacies sell multiple drugs with specific prices.
- A drug may be sold at different prices across different pharmacies.

### 🔗 Patient–Physician Relationship
- Each patient is under the care of a specific physician.
- Each physician must have at least one patient.
- Physicians prescribe drugs to patients.
- A physician may prescribe one or multiple drugs to one or multiple patients.

### 📄 Prescription Management
- Each prescription has a date and contains multiple drugs.
- The system must track prescription history for each patient.

### 📑 Contract Management
- Pharmaceutical companies have contracts with one or multiple pharmacies.
- A pharmacy may have contracts with multiple pharmaceutical companies.
- Each contract has a start date and an end date.

---

## 📊 Analytical Requirements
To support data-driven decision making, the following analytical queries are required:

1. **Average age of patients** who visited an internal medicine specialist and had more than one visit per year.
2. **Drugs most commonly prescribed** by high-visit physicians (physicians with more than 2 visits).
3. **Most visited specialization** per patient (i.e., the patient's most serious illness).
4. **Average price** of a specific drug across all pharmacies.
5. **Identification of potential collusion** between physicians and pharmacies (based on patient visit patterns).
6. **Most expensive and cheapest drugs** available in pharmacies, along with their **price growth rate**.

> 💡 To further address the analytical requirements, the following enhancements were included in the design (in alignment with the user’s needs):
> - **Price change tracking** (`price_start_date`, `price_end_date`) to calculate drug price growth rates.
> - **Visit tracking** (`pharmacy_visit` table) to analyze physician–pharmacy relationships.
> - **Historical care tracking** (`start_date`, `end_date`) to maintain patient–physician history.

---

## 🧩 Deliverables

| Deliverable | Description |
|-------------|-------------|
| **Database Schema** | 13 normalized tables with proper relationships and constraints |
| **Sample Data** | 10+ realistic records per table (US-based, New York) |
| **ER Diagram** | Visual representation of the database model |
| **Analytical Queries** | 6 business intelligence queries addressing all requirements |
| **SQL Clauses Queries** | 4 queries demonstrating `TRIM`, `REPLACE`, `FLOOR`, `STDDEV`, etc. |
| **Fully Commented Scripts** | All SQL scripts are clearly commented for readability and maintenance |
