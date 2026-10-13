<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCMS - User Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body class="user-dashboard-page">

    <header class="dashboard-header">
        <h1>Secure Complaint Management System</h1>
        <h2>Welcome to SCMS</h2>
        <p>User Dashboard</p>
    </header>

    <main class="dashboard-container">

        <h3>Manage Your Complaints</h3>

        <a class="dashboard-action"
           href="${pageContext.request.contextPath}/user/complaint">
            Submit Complaint
        </a>

        <a class="dashboard-action"
           href="${pageContext.request.contextPath}/user/myComplaints">
            My Complaints
        </a>

        <form action="${pageContext.request.contextPath}/logout"
              method="post"
              class="logout-form">

            <button type="submit" class="dashboard-logout">
                Logout
            </button>

        </form>

    </main>

</body>
</html>