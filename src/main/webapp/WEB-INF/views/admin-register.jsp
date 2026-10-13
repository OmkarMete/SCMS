<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCMS - Admin Registration</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="login-page">

    <header class="page-header">
        <h1>Secure Complaint Management System</h1>
        <h2>Admin Registration</h2>
    </header>

    <main class="login-container">

        <form class="login-form"
              action="${pageContext.request.contextPath}/admin/saveAdmin"
              method="post">

            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name"
                       placeholder="Enter your full name" required>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email"
                       placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password"
                       placeholder="Create a password" required>
            </div>

            <button type="submit" class="login-button">
                Register Admin
            </button>

        </form>

        <p class="register-link">
            Already registered?
            <a href="${pageContext.request.contextPath}/loginpage">Login here</a>
        </p>

    </main>

</body>
</html>
