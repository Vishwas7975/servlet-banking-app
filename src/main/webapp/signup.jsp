<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Create Account</title>

<style>
    body {
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(to bottom right,#e6eef7,#cdd9e6);
        margin: 0;
        padding: 40px 0;
        display: flex;
        justify-content: center;
    }

    .form-card {
        width: 100%;
        max-width: 500px;
        background: white;
        padding: 35px 40px;
        border-radius: 16px;
        box-shadow: 0px 6px 18px rgba(0,0,0,0.12);
    }

    h2 {
        text-align: center;
        font-size: 28px;
        font-weight: bold;
        color: #0077cc;
        margin-bottom: 30px;
    }

    .input-group {
        margin-bottom: 20px;
    }

    label {
        font-size: 15px;
        font-weight: 600;
        margin-bottom: 6px;
        display: block;
        color: #333;
    }

    input {
        width: 100%;
        height: 50px;
        padding: 12px 15px;
        border: 1px solid #d6d6d6;
        border-radius: 10px;
        background: #ffffff;
        font-size: 15px;
        box-sizing: border-box;
        transition: 0.25s ease;
    }

    input:focus {
        outline: none;
        border-color: #1e88e5;
        box-shadow: 0px 0px 6px rgba(30,136,229,0.35);
    }

    .btn {
        width: 100%;
        background: #1e88e5;
        color: white;
        padding: 14px 20px;
        border: none;
        border-radius: 10px;
        font-size: 17px;
        font-weight: bold;
        cursor: pointer;
        margin-top: 10px;
        transition: 0.3s;
    }

    .btn:hover {
        background: #1565c0;
        transform: translateY(-2px);
    }

    .login-link {
        text-align: center;
        margin-top: 18px;
        color: #333;
        font-size: 15px;
    }

    .login-link a {
        color: #0066bb;
        font-weight: bold;
        text-decoration: none;
    }

    .login-link a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="form-card">

<h2>Create Account</h2>

<form action="CreateAccount" method="post">

    <!-- ACCOUNT NUMBER -->
    <div class="input-group">
        <label>Account Number</label>
        <input type="text" name="accountNumber" required>
    </div>

    <!-- HOLDER NAME -->
    <div class="input-group">
        <label>Holder Name</label>
        <input type="text" name="accountHolderName" required>
    </div>

    <!-- BALANCE -->
    <div class="input-group">
        <label>Balance</label>
        <input type="number" name="balance" required>
    </div>

    <!-- ACCOUNT TYPE -->
    <div class="input-group">
        <label>Account Type</label>
        <input type="text" name="accountType" required>
    </div>

    <!-- IFSC -->
    <div class="input-group">
        <label>IFSC Code</label>
        <input type="text" name="ifscCode" required>
    </div>

    <!-- BRANCH -->
    <div class="input-group">
        <label>Branch</label>
        <input type="text" name="branchName">
    </div>

    <!-- ADDRESS -->
    <div class="input-group">
        <label>Address</label>
        <input type="text" name="address">
    </div>

    <!-- PHONE -->
    <div class="input-group">
        <label>Phone</label>
        <input type="text" name="phone">
    </div>

    <!-- EMAIL -->
    <div class="input-group">
        <label>Email</label>
        <input type="email" name="email">
    </div>

    <!-- PIN -->
    <div class="input-group">
        <label>PIN</label>
        <input type="password" name="pin" required>
    </div>

    <button type="submit" class="btn">Create Account</button>

</form>

<p class="login-link">
    Already have an account? <a href="login.jsp">Login</a>
</p>

</div>

</body>
</html>
