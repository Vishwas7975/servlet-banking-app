🏦 Banking Management System
A full-stack Java Web Application built using JSP, Servlets, JDBC, and MySQL to handle banking operations such as account creation, authentication, deposits, withdrawals, fund transfers, and transaction tracking.

Built with MVC architecture + OOP principles for better maintainability and scalability.

🚀 Features

👤 Create, view & update bank accounts

🔒 Secure login using Account Number + PIN

💰 Deposit, withdraw & transfer money

🧾 Real-time balance updates

📜 Transaction history with timestamps

🧱 Modular MVC architecture

🗄 MySQL database connectivity using JDBC

🎨 JSP-based user interface

🛠 Tech Stack

Frontend

🌐 HTML5

🎨 CSS3

📄 JSP

⚡ JavaScript

Backend

🖥 Java Servlets

🔌 JDBC

Database

🗄 MySQL

Tools

🚀 Apache Tomcat 9+

🧩 Eclipse / IntelliJ IDEA

📦 Maven

📁 Project Repository
🔗 GitHub: https://github.com/Vishwas7975/servlet-banking-app

📦 Installation & Setup Guide
Follow these steps to set up the project locally.

🔧 Prerequisites

☕ JDK 11+

🖥 Eclipse or IntelliJ IDEA

🚀 Apache Tomcat 9+

🗄 MySQL Server + MySQL Workbench

⚙ Maven

📥 Step 1: Clone the Project

git clone https://github.com/Vishwas7975/servlet-banking-app

cd servlet-banking-app

Open the project in your IDE.

🗃 Step 2: Setup the Database

Run the following in MySQL Workbench:

CREATE DATABASE bank_app;

USE bank_app;

📌 Create Tables

Bank Accounts Table

CREATE TABLE bank_accounts (
  accountNumber BIGINT PRIMARY KEY,
  accountHolderName VARCHAR(100) NOT NULL,
  balance DOUBLE NOT NULL,
  accountType VARCHAR(20) NOT NULL,
  ifscCode VARCHAR(20) NOT NULL,
  branchName VARCHAR(50),
  address VARCHAR(200),
  phone VARCHAR(15),
  email VARCHAR(100),
  pin VARCHAR(10) NOT NULL
);

Transactions Table

CREATE TABLE transactions (
  transactionId BIGINT AUTO_INCREMENT PRIMARY KEY,
  transactionType VARCHAR(20) NOT NULL,
  amount DOUBLE NOT NULL,
  transactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  transactionFrom BIGINT,
  transactionTo BIGINT,
  transactionDescription VARCHAR(200),
  FOREIGN KEY (transactionFrom) REFERENCES bank_accounts(accountNumber),
  FOREIGN KEY (transactionTo) REFERENCES bank_accounts(accountNumber)
);

🔐 Step 3: Configure Database Connection
Edit:

src/main/java/util/DBConnection.java

Update credentials:

private static final String URL = "jdbc:mysql://localhost:3306/bank_app";

private static final String USER = "root";

private static final String PASSWORD = "your_mysql_password";

🧭 Step 4: Configure Apache Tomcat

▶ Run → Run on Server

🚀 Select Apache Tomcat 9

📂 Context Path → /servlet-banking-app

🔌 Port → 8080

▶ Step 5: Run the Application

http://localhost:8080/servlet-banking-app/

🧪 How to Use

🆕 Create a new bank account

🔐 Log in using Account Number + PIN

💸 Perform operations:

📊 Check balance

💵 Deposit

🏧 Withdraw

🔁 Transfer funds

📜 View full transaction history

📂 Project Structure

src
 └── main
     ├── java
     │    ├── controller
     │    ├── dao
     │    ├── dto
     │    ├── service
     │    └── util
     └── webapp
          ├── account.jsp
          ├── bankTransfer.jsp
          ├── checkBalance.jsp
          ├── dashboard.jsp
          ├── deposit.jsp
          ├── error500.jsp
          ├── index.jsp
          ├── login.jsp
          ├── logout.jsp
          ├── signup.jsp
          ├── SuccessRegistration.jsp
          ├── transactions.jsp
          ├── updateAccountDetails.jsp
          ├── updatePIN.jsp
          └── withdraw.jsp

pom.xml

🤝 Contributing

1️⃣ Fork the Repository

2️⃣ Create a New Branch

git checkout -b feature-name

3️⃣ Commit Your Changes

git commit -m "Added new feature"

4️⃣ Push to Your Branch

git push origin feature-name

5️⃣ Submit a Pull Request

Open a PR from your fork to the main branch.
