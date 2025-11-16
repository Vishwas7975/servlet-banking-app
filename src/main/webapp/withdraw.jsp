<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Withdraw Money</title>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap');

    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to bottom right, #dfe7f2, #b9c7d6);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .card {
        background-color: #ffffff;
        padding: 35px 45px;
        border-radius: 14px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        width: 400px;
        animation: slideUp 0.8s ease;
    }

    h2 {
        text-align: center;
        color: #d32f2f;
        margin-bottom: 25px;
        font-size: 28px;
        font-weight: 600;
    }

    /* Status Messages */
    .message {
        text-align: center;
        font-weight: bold;
        font-size: 15px;
        margin-bottom: 15px;
        padding: 10px;
        border-radius: 8px;
    }

    .success { background: #d4edda; color: #155724; border-left: 5px solid #28a745; }
    .failed { background: #f8d7da; color: #721c24; border-left: 5px solid #dc3545; }
    .invalid { background: #fff3cd; color: #856404; border-left: 5px solid #ff9800; }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: 600;
        color: #333;
    }

    /* FIXED INPUT + ICON WRAPPER */
    .input-group {
        margin-bottom: 20px;
    }

    .input-wrapper {
        position: relative;
        width: 100%;
    }

    .input-icon {
        position: absolute;
        left: 12px;
        top: 50%;
        transform: translateY(-50%);
        width: 20px;
        height: 20px;
        stroke: #666;
        pointer-events: none;
    }

    .input-field {
        width: 100%;
        padding: 12px 12px 12px 45px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 16px;
        box-sizing: border-box;
        outline: none;
    }

    .input-field:focus {
        border-color: #d32f2f;
        box-shadow: 0 0 6px rgba(211,47,47,0.4);
    }

    /* Button */
    input[type="submit"] {
        width: 100%;
        background-color: #d32f2f;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 8px;
        font-size: 17px;
        font-weight: 600;
        cursor: pointer;
        transition: 0.3s;
        box-shadow: 0 4px 12px rgba(211,47,47,0.4);
    }

    input[type="submit"]:hover {
        background-color: #b71c1c;
        transform: translateY(-3px);
        box-shadow: 0 6px 16px rgba(183,28,28,0.45);
    }

    .back-link {
        text-align: center;
        margin-top: 15px;
    }

    .back-link a {
        text-decoration: none;
        color: #1e88e5;
        font-weight: 600;
        display: inline-flex;
        align-items: center;
        gap: 6px;
        transition: 0.3s;
    }

    .back-link a:hover {
        text-decoration: underline;
        transform: translateX(-3px);
    }

    @keyframes slideUp {
        from { transform: translateY(40px); opacity: 0; }
        to   { transform: translateY(0); opacity: 1; }
    }
</style>
</head>

<body>
<div class="card">

<h2>Withdraw Money</h2>

<%
    String status = request.getParameter("status");
    if ("success".equals(status)) { %>
        <p class="message success">Withdrawal successful!</p>
<%  } else if ("failed".equals(status)) { %>
        <p class="message failed">Withdrawal failed! Insufficient balance or account not found.</p>
<%  } else if ("invalid".equals(status)) { %>
        <p class="message invalid">Invalid input! Please enter numeric values.</p>
<% } %>

<form action="withdraw" method="post">

    <!-- Account Number -->
    <div class="input-group">
        <label>Account Number:</label>

        <div class="input-wrapper">
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M3 10l9-6 9 6"></path>
                <path d="M4 10h16v8H4z"></path>
            </svg>

            <input type="text" name="accountNumber" required class="input-field">
        </div>
    </div>

    <!-- Amount -->
    <div class="input-group">
        <label>Amount:</label>

        <div class="input-wrapper">
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M12 1L12 23"></path>
                <path d="M17 5H9.5a3.5 3.5 0 000 7h5a3.5 3.5 0 010 7H6"></path>
            </svg>

            <input type="number" name="amount" required class="input-field">
        </div>
    </div>

    <input type="submit" value="Withdraw">

</form>

<p class="back-link">
    <a href="dashboard.jsp">⬅ Back to Dashboard</a>
</p>

</div>
</body>
</html>
