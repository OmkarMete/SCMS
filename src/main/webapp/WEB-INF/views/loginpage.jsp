 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCMS - Welcome Back</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="scms-login-page">

    <main class="scms-login-layout">

        <!-- Left Branding Panel -->
        <section class="scms-brand-panel">

            <a href="${pageContext.request.contextPath}/loginpage" class="scms-brand">
                <span class="scms-brand-icon">&#10003;</span>
                <span>SCMS</span>
            </a>

            <div class="scms-brand-content">
                <span class="scms-eyebrow">SECURE COMPLAINT MANAGEMENT</span>

                <h1>Your Voice.<br>
                    <span>Our Priority.</span>
                </h1>

                <p class="scms-brand-description">
                    A smarter way to report issues, track progress
                    and get the resolution you deserve.
                </p>

                <div class="scms-feature-card">
                    <div class="scms-feature-icon">&#9993;</div>
                    <div>
                        <h3>Submit Complaints</h3>
                        <p>Report your concerns quickly and easily.</p>
                    </div>
                </div>

                <div class="scms-feature-card">
                    <div class="scms-feature-icon">&#10003;</div>
                    <div>
                        <h3>Track Resolution</h3>
                        <p>Stay informed about your complaint status.</p>
                    </div>
                </div>

                <div class="scms-feature-card">
                    <div class="scms-feature-icon">&#128274;</div>
                    <div>
                        <h3>Secure Access</h3>
                        <p>Your account is protected by authentication.</p>
                    </div>
                </div>
            </div>

            <p class="scms-brand-footer">
                Secure Complaint Management System
            </p>
        </section>

        <!-- Right Login Panel -->
        <section class="scms-form-panel">

            <div class="scms-login-card">

                <div class="scms-mobile-brand">
                    <span class="scms-brand-icon">&#10003;</span>
                    <span>SCMS</span>
                </div>

                <div class="scms-welcome-icon">&#128075;</div>

                <h2>Welcome back!</h2>
                <p class="scms-form-subtitle">
                    Sign in to access your SCMS account.
                </p>

                <% if (request.getParameter("error") != null) { %>
                    <div class="scms-alert scms-alert-error">
                        Invalid email or password. Please try again.
                    </div>
                <% } %>

                <% if (request.getParameter("registered") != null) { %>
                    <div class="scms-alert scms-alert-success">
                        Registration successful! Please login.
                    </div>
                <% } %>

                <% if (request.getParameter("logout") != null) { %>
                    <div class="scms-alert scms-alert-success">
                        You have logged out successfully.
                    </div>
                <% } %>

                <form class="scms-login-form"
                      action="${pageContext.request.contextPath}/login"
                      method="post">

                    <div class="scms-input-group">
                        <label for="email">Email address</label>
                        <input type="email"
                               id="email"
                               name="email"
                               placeholder="you@example.com"
                               autocomplete="username"
                               required>
                    </div>

                    <div class="scms-input-group">
                        <label for="password">Password</label>
                        <input type="password"
                               id="password"
                               name="password"
                               placeholder="Enter your password"
                               autocomplete="current-password"
                               required>
                    </div>

                    <button type="submit" class="scms-signin-button">
                        Sign In <span>&rarr;</span>
                    </button>

                </form>

                <div class="scms-divider">
                    <span>NEW TO SCMS?</span>
                </div>

                <a class="scms-register-button"
                   href="${pageContext.request.contextPath}/register">
                    Create a User Account
                </a>

                <p class="scms-admin-link">
                    Administrator?
                    <a href="${pageContext.request.contextPath}/admin/register">
                        Admin Registration
                    </a>
                </p>

                <p class="scms-security-note">
                    &#128274; Secure access to your account
                </p>

            </div>

        </section>

    </main>

</body>
</html>
