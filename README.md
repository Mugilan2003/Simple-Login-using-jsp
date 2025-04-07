# Simple Login using JSP

This is a basic **Login System** built using **Java Server Pages (JSP)**, **Servlets**, and **MySQL**. It demonstrates how to create a simple login form with backend validation against user credentials stored in a database.

## 📌 Features

- User login form with JSP
- Backend authentication using JDBC
- Servlet-based logic for form processing
- MySQL database connectivity
- Basic session management

## 🛠️ Technologies Used

- Java
- JSP (Java Server Pages)
- Servlets
- JDBC (Java Database Connectivity)
- MySQL
- Apache Tomcat (for deployment)

## 🗂️ Project Structure

Simple-Login-using-jsp/ ├── login.jsp ├── welcome.jsp ├── error.jsp ├── LoginServlet.java └── DBConnection.java

## 🧑‍💻 How It Works

1. The user enters login details in `login.jsp`.
2. The form is submitted to `LoginServlet`.
3. The servlet checks the credentials using JDBC from the MySQL database.
4. If credentials are valid:
   - The user is redirected to `welcome.jsp`.
5. If invalid:
   - The user is redirected to `error.jsp`.

## 🧾 Database Setup

1. Create a database in MySQL (e.g., `userdb`).
2. Create a table named `users`:

```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);
INSERT INTO users (username, password) VALUES ('admin@gmail.com', 'admin123');


