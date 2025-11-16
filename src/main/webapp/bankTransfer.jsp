<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Bank Transfer</title>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;600&display=swap');

  :root{
    --accent: #1e88e5;
    --bg-from: #dfe7f2;
    --bg-to: #b9c7d6;
    --input-h: 44px;
    --icon-size: 20px;
    --field-pad-left: 44px; /* space reserved for icon */
  }

  *{box-sizing: border-box}
  body{
    font-family: "Poppins", sans-serif;
    background: linear-gradient(to bottom right, var(--bg-from), var(--bg-to));
    margin:0;
    min-height:100vh;
    display:flex;
    align-items:center;
    justify-content:center;
    padding:24px;
    animation: fadeIn .9s ease;
  }

  .transfer-container{
    width:100%;
    max-width: 440px;
    background:#fff;
    border-radius:14px;
    padding:36px 36px;
    box-shadow: 0 12px 32px rgba(0,0,0,0.18);
    text-align:center;
    animation: slideUp .9s ease;
  }

  h2{
    color:var(--accent);
    font-size:26px;
    margin:0 0 22px;
    font-weight:600;
  }

  .input-group{
    margin-bottom:18px;
    text-align:left;
  }

  .input-group label{
    display:block;
    margin-bottom:8px;
    color:#333;
    font-weight:600;
    font-size:14px;
  }

  /* field wraps icon + input so icon is positioned relative to input area */
  .field{
    position:relative;
  }

  /* svg/icon placed inside the input area, perfectly centered */
  .field svg{
    position:absolute;
    left:12px;
    top:50%;
    transform:translateY(-50%);
    width:var(--icon-size);
    height:var(--icon-size);
    stroke:#666;
    fill:none;
    pointer-events:none;
    display:block;
  }

  /* the input itself */
  .field input[type="text"],
  .field input[type="password"],
  .field input[type="number"]{
    width:100%;
    height:var(--input-h);
    padding: 8px 12px 8px calc(var(--field-pad-left) - 6px); /* slight tweak for visual balance */
    border:1px solid #d0d5db;
    border-radius:8px;
    font-size:15px;
    background:#fff;
    transition:box-shadow .18s, border-color .18s;
    display:block;
    line-height:normal;
  }

  .field input:focus{
    outline:none;
    border-color:var(--accent);
    box-shadow:0 0 8px rgba(30,136,229,0.18);
  }

  .btn{
    width:100%;
    background:var(--accent);
    color:#fff;
    padding:12px;
    border-radius:8px;
    border:0;
    font-weight:700;
    font-size:15px;
    cursor:pointer;
    box-shadow: 0 6px 18px rgba(30,136,229,0.18);
    transition: transform .14s, box-shadow .14s;
  }

  .btn:hover{ transform:translateY(-3px); box-shadow: 0 10px 26px rgba(30,136,229,0.24); }
  .back-link{ margin-top:14px }
  .back-link a{ color:var(--accent); text-decoration:none; font-weight:600; display:inline-flex; gap:8px; align-items:center }
  .back-link a:hover{ text-decoration:underline; transform:translateX(-3px); }

  @keyframes fadeIn{ from{opacity:0} to{opacity:1} }
  @keyframes slideUp{ from{transform:translateY(20px);opacity:0} to{transform:translateY(0);opacity:1} }

  /* small screens */
  @media (max-width:480px){
    .transfer-container{ padding:24px; }
  }
</style>
</head>
<body>

  <div class="transfer-container">
    <h2>Transfer Money</h2>

    <form action="BankTransfer" method="post" autocomplete="off">

      <!-- From Account -->
      <div class="input-group">
        <label for="fromAcc">From Account</label>
        <div class="field">
          <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" aria-hidden="true">
            <path d="M3 10l9-6 9 6"></path>
            <path d="M4 10h16v8H4z"></path>
          </svg>
          <input id="fromAcc" name="fromAcc" type="text" required />
        </div>
      </div>

      <!-- PIN -->
      <div class="input-group">
        <label for="pin">PIN</label>
        <div class="field">
          <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" aria-hidden="true">
            <path d="M12 17a2 2 0 100-4 2 2 0 000 4z"></path>
            <path d="M6 10V7a6 6 0 0112 0v3"></path>
            <rect x="6" y="10" width="12" height="10" rx="2"></rect>
          </svg>
          <input id="pin" name="pin" type="password" required />
        </div>
      </div>

      <!-- To Account -->
      <div class="input-group">
        <label for="toAcc">To Account</label>
        <div class="field">
          <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" aria-hidden="true">
            <rect x="3" y="4" width="18" height="14" rx="2"></rect>
          </svg>
          <input id="toAcc" name="toAcc" type="text" required />
        </div>
      </div>

      <!-- Amount -->
      <div class="input-group">
        <label for="amount">Amount</label>
        <div class="field">
          <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" aria-hidden="true">
            <path d="M12 1L12 23"></path>
            <path d="M17 5H9.5a3.5 3.5 0 000 7h5a3.5 3.5 0 010 7H6"></path>
          </svg>
          <input id="amount" name="amount" type="number" required min="1" step="0.01" />
        </div>
      </div>

      <button type="submit" class="btn">Transfer</button>
    </form>

    <p class="back-link"><a href="dashboard.jsp"> < Back to Dashboard</a></p>
  </div>

</body>
</html>
