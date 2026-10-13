 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCMS - Submit Complaint</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="login-page">

    <header class="page-header">
        <h1>Secure Complaint Management System</h1>
        <h2>Submit Complaint</h2>
        <p>Tell us about your issue</p>
    </header>

    <main class="login-container">

        <form class="login-form"
              action="${pageContext.request.contextPath}/user/saveComplaint"
              method="post">

            <div class="form-group">
                <label for="title">Complaint Title</label>
                <input type="text" id="title" name="title"
                       placeholder="Enter complaint title" required>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description"
                          placeholder="Describe your complaint in detail"
                          rows="5" required></textarea>
            </div>

            <button type="submit" class="login-button">Submit Complaint</button>

        </form>

        <p class="register-link">
            <a href="${pageContext.request.contextPath}/user/home">Back to Home</a>
        </p>

    </main>

</body>
</html>
