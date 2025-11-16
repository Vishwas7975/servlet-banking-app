<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap');

    body {
        font-family: "Poppins", sans-serif;
        background: linear-gradient(to bottom right, #dfe7f2, #b9c7d6);
        display: flex;
        justify-content: center;
        align-items: flex-start;
        min-height: 100vh;     /* FIXED */
        height: auto;          /* FIXED */
        padding: 40px 0;       /* FIXED */
        margin: 0;
        animation: fadeIn 1s ease;
    }

    .dashboard-container {
        background-color: #fff;
        padding: 35px 45px;
        border-radius: 16px;
        width: 380px;
        max-width: 90%;
        text-align: center;
        box-shadow: 0px 12px 35px rgba(0,0,0,0.18);
        animation: slideUp 1s ease;
    }

    h2 {
        font-size: 26px;
        margin-bottom: 25px;
        color: #1e88e5;
        font-weight: 600;
    }

    .dashboard-menu {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    .dashboard-menu li {
        margin: 14px 0;
    }

    .menu-item {
        display: flex;
        align-items: center;
        gap: 12px;
        background-color: #1e88e5;
        color: white;
        padding: 12px;
        border-radius: 10px;
        text-decoration: none;
        font-weight: bold;
        transition: 0.3s;
        box-shadow: 0 4px 12px rgba(30,136,229,0.35);
        justify-content: center;
    }

    .menu-item:hover {
        background-color: #1565c0;
        transform: translateY(-3px);
        box-shadow: 0 6px 16px rgba(21,101,192,0.45);
    }

    /* Logout special styling */
    .logout-btn {
        background-color: #e53935 !important;
        box-shadow: 0 4px 12px rgba(229,57,53,0.35);
    }

    .logout-btn:hover {
        background-color: #c62828 !important;
        transform: translateY(-3px);
        box-shadow: 0 6px 16px rgba(198,40,40,0.45);
    }

    /* Icons */
    .icon {
        width: 22px;
        height: 22px;
        stroke: white;
    }

    /* Mobile Responsive */
    @media (max-width: 480px) {
        .dashboard-container {
            width: 90%;
            padding: 25px 30px;
        }

        h2 {
            font-size: 22px;
        }

        .menu-item {
            font-size: 15px;
            padding: 10px;
        }

        .icon {
            width: 20px;
            height: 20px;
        }
    }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    @keyframes slideUp {
        from { transform: translateY(40px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }
</style>

</head>

<body>

<div class="dashboard-container">
  <h2>Welcome to Your Dashboard</h2>

  <ul class="dashboard-menu">

    <li>
      <a class="menu-item" href="account.jsp">
        <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
            <path d="M3 10l9-6 9 6"></path>
            <path d="M4 10h16v8H4z"></path>
        </svg>
        View Account
      </a>
    </li>

    <li>
      <a class="menu-item" href="bankTransfer.jsp">
        <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
            <path d="M17 10l4 4-4 4"></path>
            <path d="M3 20h18"></path>
        </svg>
        Transfer Money
      </a>
    </li>

    <li>
      <a class="menu-item" href="checkBalannce.jsp">
        <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
            <circle cx="12" cy="12" r="10"></circle>
            <path d="M12 6v6l4 2"></path>
        </svg>
        Check Balance
      </a>
    </li>

    <li>
      <a class="menu-item" href="DisplayTransaction">
        <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
            <rect x="3" y="4" width="18" height="16" rx="2"></rect>
            <path d="M3 10h18"></path>
        </svg>
        View Transaction History
      </a>
    </li>

    <li>
      <a class="menu-item" href="deposit.jsp">
        <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
            <path d="M12 3v18"></path>
            <path d="M6 9h12"></path>
        </svg>
        Deposit
      </a>
    </li>

    <li>
      <a class="menu-item" href="withdraw.jsp">
        <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
            <path d="M12 21V3"></path>
            <path d="M6 15h12"></path>
        </svg>
        Withdraw
      </a>
    </li>

    <li>
      <a class="menu-item" href="updatePIN.jsp">
        <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
          <path d="M12 17a2 2 0 100-4 2 2 0 000 4z"></path>
          <path d="M6 10V7a6 6 0 0112 0v3"></path>
        </svg>
        Update PIN
      </a>
    </li>

    <li>
      <a class="menu-item" href="updateAccountDetails.jsp">
        <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
            <path d="M4 4h16v16H4z"></path>
            <path d="M4 9h16"></path>
        </svg>
        Update Account Details
      </a>
    </li>

    <li>
      <a class="menu-item logout-btn" href="logout.jsp">
        <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
            <path d="M15 3h4v18h-4"></path>
            <path d="M10 17l5-5-5-5"></path>
        </svg>
        Logout
      </a>
    </li>

  </ul>
</div>

</body>
</html>
