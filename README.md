# Banking Management System

A full-stack Java web application for core banking operations — account creation, authentication, deposits, withdrawals, fund transfers, and transaction tracking. Built with JSP, Servlets, JDBC, and MySQL, following MVC architecture and OOP principles for maintainability and scalability.

---

## Features

- Create, view, and update bank accounts
- Secure login using Account Number and PIN
- Deposit, withdraw, and transfer funds between accounts
- Real-time balance updates
- Transaction history with timestamps
- Modular MVC architecture
- MySQL database connectivity via JDBC

---

## Tech Stack

| Layer | Technology |
|---|---|
| Frontend | HTML5, CSS3, JSP, JavaScript |
| Backend | Java Servlets, JDBC |
| Database | MySQL |
| Build Tool | Maven |
| Server | Apache Tomcat 9+ |

---

## Project Structure

```
src
└── main
    ├── java
    │   ├── controller
    │   ├── dao
    │   ├── dto
    │   ├── service
    │   └── util
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
```

---

## Setup Guide

### Prerequisites

- JDK 11+
- Eclipse or IntelliJ IDEA
- Apache Tomcat 9+
- MySQL Server + MySQL Workbench
- Maven

### 1. Clone the Repository

```bash
git clone https://github.com/Vishwas7975/servlet-banking-app
cd servlet-banking-app
```

Open the project in your IDE.

### 2. Set Up the Database

Run the following in MySQL Workbench:

```sql
CREATE DATABASE bank_app;
USE bank_app;

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
```

### 3. Configure the Database Connection

Edit `src/main/java/util/DBConnection.java` and update your credentials:

```java
private static final String URL = "jdbc:mysql://localhost:3306/bank_app";
private static final String USER = "root";
private static final String PASSWORD = "your_mysql_password";
```

### 4. Configure Apache Tomcat

- Run → Run on Server
- Select Apache Tomcat 9
- Context Path: `/servlet-banking-app`
- Port: `8080`

### 5. Run the Application

```
http://localhost:8080/servlet-banking-app/
```

---

## Usage

1. Create a new bank account
2. Log in using Account Number and PIN
3. Perform operations: check balance, deposit, withdraw, or transfer funds
4. View full transaction history

---

## Contributing

1. Fork the repository
2. Create a new branch: `git checkout -b feature-name`
3. Commit your changes: `git commit -m "Added new feature"`
4. Push to your branch: `git push origin feature-name`
5. Open a pull request from your fork to the main branch
