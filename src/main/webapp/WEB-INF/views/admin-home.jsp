 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCMS - Admin Dashboard</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="login-page">

    <header class="page-header">
        <h1>Secure Complaint Management System</h1>
        <h2>Admin Dashboard</h2>
        <p>Manage and track all user complaints</p>
    </header>

    <main class="admin-container">

        <div class="admin-summary">
            <h3>All Complaints</h3>
            <p>Review complaint details and update their status.</p>
        </div>

        <div class="admin-table-card">
            <table class="admin-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>User</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="complaint" items="${complaints}">
                        <tr>
                            <td>${complaint.id}</td>
                            <td><c:out value="${complaint.title}" /></td>
                            <td><c:out value="${complaint.description}" /></td>
                            <td><c:out value="${complaint.user.email}" /></td>
                            <td>
                                <span class="status-badge">
                                    <c:out value="${complaint.status}" />
                                </span>
                            </td>
                            <td>
                                <form class="admin-update-form"
                                      action="${pageContext.request.contextPath}/admin/updateStatus"
                                      method="post">

                                    <input type="hidden" name="id" value="${complaint.id}">

                                    <select name="status" aria-label="Update complaint status">
                                        <option value="PENDING">PENDING</option>
                                        <option value="IN_PROGRESS">IN_PROGRESS</option>
                                        <option value="RESOLVED">RESOLVED</option>
                                    </select>

                                    <button type="submit">Update</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${empty complaints}">
                        <tr>
                            <td colspan="6" class="empty-message">
                                No complaints available.
                            </td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>

        <form class="admin-logout"
              action="${pageContext.request.contextPath}/logout"
              method="post">
            <button type="submit">Logout</button>
        </form>

    </main>

</body>
</html>
