<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Account Details</title>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap');

    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to bottom right, #dfe7f2, #b9c7d6);
        display: flex;
        justify-content: center;
        align-items: flex-start;
        min-height: 100vh;
        height: auto;
        padding: 40px 0;
        margin: 0;
        animation: fadeIn 1s ease-in-out;
    }

    .form-container {
        background-color: white;
        padding: 40px 45px;
        border-radius: 14px;
        box-shadow: 0px 8px 25px rgba(0,0,0,0.18);
        width: 420px;
        max-width: 90%;
        animation: slideUp 1s ease;
    }

    h2 {
        text-align: center;
        color: #1e88e5;
        margin-bottom: 25px;
        font-size: 28px;
        font-weight: 600;
    }

    label {
        font-weight: 600;
        margin-bottom: 6px;
        display: block;
        color: #333;
    }

    .input-group {
        position: relative;
        margin-bottom: 20px;
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

    input[type="text"],
    input[type="number"],
    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 12px 12px 12px 42px;
        border: 1px solid #ccc;
        border-radius: 8px;
        outline: none;
        font-size: 15px;
        transition: 0.3s;
        box-sizing: border-box;
    }

    input:focus {
        border-color: #1e88e5;
        box-shadow: 0 0 6px rgba(30, 136, 229, 0.4);
    }

    .btn-submit {
        background: #1e88e5;
        color: white;
        font-weight: bold;
        border: none;
        padding: 14px 15px;
        border-radius: 8px;
        width: 100%;
        cursor: pointer;
        font-size: 17px;
        margin-top: 10px;
        transition: 0.3s;
        box-shadow: 0 4px 10px rgba(30, 136, 229, 0.4);
    }

    .btn-submit:hover {
        background: #1565c0;
        transform: translateY(-2px);
        box-shadow: 0 6px 14px rgba(21, 101, 192, 0.45);
    }

    .message {
        text-align: center;
        font-weight: bold;
        font-size: 14px;
        margin-top: 15px;
        color: green;
    }

    .back-link {
        text-align: center;
        margin-top: 15px;
    }

    .back-link a {
        text-decoration: none;
        color: #1e88e5;
        font-weight: 600;
        font-size: 15px;
        display: inline-flex;
        align-items: center;
        gap: 6px;
        transition: 0.3s;
    }

    .back-link a:hover {
        opacity: 0.8;
        transform: translateX(-3px);
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    @keyframes slideUp {
        from { opacity: 0; transform: translateY(40px); }
        to { opacity: 1; transform: translateY(0); }
    }

</style>
</head>

<body>
<div class="form-container">

    <h2>Update Account Details</h2>

    <form action="updateAccountDetails" method="post">
        <input type="hidden" name="action" value="updateAccount">

        <!-- Account Number -->
        <label>Account Number</label>
        <div class="input-group">
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M3 10l9-6 9 6"></path>
                <path d="M4 10h16v8H4z"></path>
            </svg>
            <input type="text" name="accountNumber" required>
        </div>

        <!-- Holder Name -->
        <label>Holder Name</label>
        <div class="input-group">
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <circle cx="12" cy="7" r="4"></circle>
                <path d="M5 21c0-4 3-7 7-7s7 3 7 7"></path>
            </svg>
            <input type="text" name="accountHolderName">
        </div>

        <!-- Balance -->
        <label>Balance</label>
        <div class="input-group">
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M12 1L12 23"></path>
                <path d="M17 5H9.5a3.5 3.5 0 000 7h5a3.5 3.5 0 010 7H6"></path>
            </svg>
            <input type="number" step="0.01" name="balance">
        </div>

        <!-- Account Type -->
        <label>Account Type</label>
        <div class="input-group">
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <rect x="3" y="4" width="18" height="14" rx="2"></rect>
                <path d="M3 10h18"></path>
            </svg>
            <input type="text" name="accountType">
        </div>

        <!-- IFSC -->
        <label>IFSC Code</label>
        <div class="input-group">
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M4 4h16v16H4z"></path>
                <path d="M4 9h16"></path>
                <path d="M9 4v16"></path>
            </svg>
            <input type="text" name="ifscCode">
        </div>

        <!-- Branch -->
        <label>Branch Name</label>
        <div class="input-group">
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M12 2a7 7 0 017 7c0 5-7 13-7 13S5 14 5 9a7 7 0 017-7z"></path>
                <circle cx="12" cy="9" r="2.5"></circle>
            </svg>
            <input type="text" name="branchName">
        </div>

        <!-- Address -->
        <label>Address</label>
        <div class="input-group">
            <svg class="input-icon" viewBox="0 0 24 24" fill="none" stroke-width="2">
                <path d="M4 4h16v16H4z"></path>
                <path d="M4 9h16"></path>
            </svg>
            <input type="text" name="address">
        </div>

        <!-- Phone -->
        <label>Phone</label>
        <div class="input-group">
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M22 16.92v3a2 2 0 01-2.18 2A19.79 19.79 0 013 5.18 2 2 0 015 3h3a2 2 0 012 1.72 12.05 12.05 0 006.06 9.06A2 2 0 0117 16.92z"></path>
            </svg>
            <input type="text" name="phone">
        </div>

        <!-- Email -->
        <label>Email</label>
        <div class="input-group">
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M4 4h16v16H4z"></path>
                <path d="M22 6l-10 7L2 6"></path>
            </svg>
            <input type="email" name="email">
        </div>

        <!-- PIN -->
        <label>PIN</label>
        <div class="input-group">
            <svg class="input-icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <path d="M12 17a2 2 0 100-4 2 2 0 000 4z"></path>
                <path d="M6 10V7a6 6 0 0112 0v3"></path>
                <rect x="6" y="10" width="12" height="10" rx="2"></rect>
            </svg>
            <input type="password" name="pin">
        </div>

        <input type="submit" value="Update Account" class="btn-submit">
    </form>

    <p class="message">
        <%= request.getAttribute("message") != null ? request.getAttribute("message") : "" %>
    </p>

    <p class="back-link">
        <a href="dashboard.jsp">⬅ Back to Dashboard</a>
    </p>
</div>

</body>
</html>
