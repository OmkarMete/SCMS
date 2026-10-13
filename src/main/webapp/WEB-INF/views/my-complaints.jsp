 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCMS - My Complaints</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="login-page">

    <header class="page-header">
        <h1>Secure Complaint Management System</h1>
        <h2>My Complaints</h2>
        <p>Track the status of your submitted complaints</p>
    </header>

    <main class="complaints-container">

        <div class="table-card">
            <table class="complaints-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="complaint" items="${complaints}">
                        <tr>
                            <td>${complaint.id}</td>
                            <td>${complaint.title}</td>
                            <td>${complaint.description}</td>
                            <td>
                                <span class="status-badge">${complaint.status}</span>
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${empty complaints}">
                        <tr>
                            <td colspan="4" class="empty-message">
                                You have not submitted any complaints yet.
                            </td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>

        <p class="register-link">
            <a href="${pageContext.request.contextPath}/user/home">Back to Home</a>
        </p>

    </main>

</body>
</html>
