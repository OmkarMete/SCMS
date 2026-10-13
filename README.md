# SCMS – Secure Complaint Management System

SCMS (Secure Complaint Management System) is a web-based application designed to manage user complaints securely. It provides separate access for users and administrators using Spring Security and role-based authorization.

## Features

- User Registration and Login
- Admin Login
- Secure Password Encryption using BCrypt
- Role-Based Access Control for USER and ADMIN
- Submit Complaints
- View My Complaints
- Admin Dashboard
- Manage Complaints and Update Complaint Status
- PostgreSQL Database Integration
- MVC Architecture using JSP

## Technologies Used

- **Backend:** Java, Spring Boot
- **Security:** Spring Security, BCrypt
- **Frontend:** JSP, HTML, CSS
- **Database:** PostgreSQL
- **Persistence:** Spring Data JPA, Hibernate
- **Build Tool:** Maven

## Project Structure

    SCMS/
    ├── src/
    │   └── main/
    │       ├── java/
    │       │   └── com/jsp/scms/
    │       ├── resources/
    │       │   └── static/css/
    │       └── webapp/
    │           └── WEB-INF/views/
    ├── pom.xml
    └── README.md

## Getting Started

### Prerequisites

- Java Development Kit (JDK)
- Maven
- PostgreSQL
- Eclipse IDE or another Java IDE

### Installation

1. Clone the repository:

       git clone https://github.com/OmkarMete/SCMS.git

2. Open the project in Eclipse or your preferred Java IDE.

3. Create a PostgreSQL database named `scms`.

4. Configure the database URL, username, and password in `src/main/resources/application.properties`.

       spring.datasource.url=jdbc:postgresql://localhost:5432/scms
       spring.datasource.username=YOUR_USERNAME
       spring.datasource.password=YOUR_PASSWORD

5. Run the application as a Spring Boot application.

6. Open the application in your browser at:

       http://localhost:8080/loginpage

## User Roles

**USER**
- Register and log in.
- Submit complaints.
- View personal complaints and their statuses.

**ADMIN**
- Access the administration dashboard.
- View and manage complaints.
- Update complaint statuses.

## Security

- Passwords are stored using BCrypt hashing.
- Spring Security manages authentication and authorization.
- Access to protected pages is controlled by user roles.

## Future Enhancements

- Email notifications for complaint status updates.
- Complaint search and filtering.
- Pagination for complaint lists.
- Complaint history and reporting.

## Author

**Omkar Mete**

GitHub: [OmkarMete](https://github.com/OmkarMete)

## License

This project is available for educational and portfolio purposes. Add a formal license if you intend to distribute it under specific reuse terms.
