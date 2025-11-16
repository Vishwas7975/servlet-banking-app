<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Check Balance</title>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap');

    body {
        font-family: "Poppins", sans-serif;
        background: linear-gradient(to bottom right, #dfe7f2, #b9c7d6);
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
    }

    .balance-container {
        background-color: #fff;
        padding: 40px 50px;
        border-radius: 14px;
        box-shadow: 0px 10px 30px rgba(0,0,0,0.2);
        width: 420px;
        text-align: center;
        animation: slideUp 0.8s ease;
    }

    h2 {
        color: #1e88e5;
        font-size: 28px;
        margin-bottom: 25px;
        font-weight: 600;
    }

    .input-group {
        margin-bottom: 20px;
        text-align: left;
    }

    label {
        font-weight: 600;
        color: #333;
        margin-bottom: 6px;
        display: block;
    }

    /* NEW: field wrapper ensures icons stay inside input */
    .field {
        position: relative;
        width: 100%;
    }

    .field svg {
        position: absolute;
        left: 12px;
        top: 50%;
        transform: translateY(-50%);
        width: 20px;
        height: 20px;
        stroke: #666;
        fill: none;
        pointer-events: none;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 12px 12px 12px 44px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
        transition: 0.3s;
        outline: none;
        box-sizing: border-box;
        height: 45px;
    }

    input:focus {
        border-color: #1e88e5;
        box-shadow: 0 0 6px rgba(30,136,229,0.4);
    }

    .btn {
        width: 100%;
        background-color: #1e88e5;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
    }

    .btn:hover {
        background-color: #1565c0;
        transform: translateY(-3px);
    }

    /* Balance result */
    .balance-result {
        background-color: #e8f2ff;
        border: 1px solid #bcd3ff;
        border-radius: 10px;
        padding: 20px;
        margin-top: 25px;
    }

    .balance-result h3 {
        color: #1e88e5;
        font-size: 28px;
        font-weight: bold;
    }

    .back-link {
        margin-top: 20px;
    }

    .back-link a {
        color: #1e88e5;
        font-weight: 600;
        text-decoration: none;
    }

    @keyframes slideUp {
        from { transform: translateY(40px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }
</style>

</head>
<body>

<div class="balance-container">
  <h2>Check Balance</h2>

  <form action="CheckBalance" method="post">

    <!-- Account Number -->
    <div class="input-group">
      <label for="accountNumber">Account Number</label>
      <div class="field">
          <svg viewBox="0 0 24 24" stroke-width="2">
            <path d="M3 10l9-6 9 6"></path>
            <path d="M4 10h16v8H4z"></path>
          </svg>
          <input type="text" id="accountNumber" name="accountNumber" required>
      </div>
    </div>

    <!-- PIN -->
    <div class="input-group">
      <label for="pin">PIN</label>
      <div class="field">
          <svg viewBox="0 0 24 24" stroke-width="2">
            <path d="M12 17a2 2 0 100-4 2 2 0 000 4z"></path>
            <path d="M6 10V7a6 6 0 0112 0v3"></path>
            <rect x="6" y="10" width="12" height="10" rx="2"></rect>
          </svg>
          <input type="password" id="pin" name="pin" required>
      </div>
    </div>

    <button class="btn">Check Balance</button>
  </form>

  <% if (request.getAttribute("balance") != null) { %>
  <div class="balance-result">
      <p>Your Current Balance:</p>
      <h3>₹ <%= request.getAttribute("balance") %></h3>
  </div>
  <% } %>

  <p class="back-link">
    <a href="dashboard.jsp">⬅ Back to Dashboard</a>
  </p>

</div>

</body>
</html>
