Author--Sachin
# Feedback Management System

## 📌 Project Overview

The Feedback Management System is a Java web application developed using JSP, Servlets, JDBC, and MySQL.
This project allows users to submit feedback through a web form, and the submitted feedback is stored in a MySQL database.

An admin page is also implemented to view all submitted feedbacks in a structured table format.

The project helped me understand real-world backend development concepts such as form handling, JDBC connectivity, session management, validation, and MVC architecture basics.

---

# 🚀 Technologies Used

* Java
* JSP (Java Server Pages)
* Servlets
* JDBC
* MySQL
* Maven
* Apache Tomcat
* HTML
* CSS
* JavaScript

---

# ✨ Features

✅ User Feedback Form
✅ Client-side Validation using JavaScript
✅ Server-side Validation using Servlet
✅ JDBC Connectivity with MySQL
✅ Session Handling
✅ Admin Page to View Feedbacks
✅ Modern Responsive UI
✅ Maven Project Structure
✅ MVC Architecture Basics

---

# 📂 Project Structure

feedback-Servlet
│
├── src/main/java
│ └── Servlet Classes
│
├── src/main/webapp
│ ├── css
│ ├── js
│ ├── feedback.jsp
│ ├── success.jsp
│ ├── admin.jsp
│ └── WEB-INF
│
├── pom.xml
│
└── README.md

---

# 🗄️ Database Configuration

## Database Name

feedback_db

## Table Name

feedback

## SQL Query

```sql
create database feedback_db;

use feedback_db;

create table feedback(
    id int primary key auto_increment,
    name varchar(100),
    email varchar(100),
    message varchar(500)
);
```

---

# ▶️ How To Run The Project

1. Clone the repository
2. Import project into Eclipse
3. Configure Apache Tomcat Server
4. Configure MySQL Database
5. Update database username and password in Servlet
6. Run project on Tomcat Server

---

# 📸 Screenshots

## Feedback Form

Screenshot will be added soon.

## Success Page

Screenshot will be added soon.

## Admin Dashboard

Screenshot will be added soon.


---

# 📚 Learning Outcomes

Through this project, I learned:

* JSP and Servlet integration
* JDBC CRUD operations
* Session handling
* Form validation
* Maven dependency management
* Tomcat server configuration
* MVC architecture basics
* Database connectivity with MySQL

---

# 👨‍💻 Author

Sachin Gupta

Aspiring Java Backend Developer 🚀
