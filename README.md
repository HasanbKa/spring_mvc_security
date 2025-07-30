# Spring MVC Security Application

This is a Spring Boot application demonstrating user authentication and role-based authorization using Spring Security, Thymeleaf, and a MySQL database.

## 🔧 Technologies Used

- **Spring Boot**
- **Spring MVC**
- **Spring Security**
- **Thymeleaf**
- **JDBC Connection (MySQL)**
- **Maven**

## 👥 User Roles

The application includes the following user roles and access levels:

- **Employee** – Basic access to application content
- **Manager** – Extended access to management features
- **Admin** – Full administrative access
- **Authorities** – Managed through the database for flexible role control

## 🗄️ Database

- MySQL is used to store user credentials, roles, and authorities.
- JDBC is used for direct database connectivity.
- Example schema and data can be configured in `application.properties`.

## 🚀 How to Run

1. Clone the repository:
    ```git clone <your-repo-url>```
2. Set up a MySQL database and update connection details in `application.properties`.
3. Build and run the application:
   ```mvn spring-boot:run ```

