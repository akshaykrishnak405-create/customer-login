<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Customer Management</title>
<style>
  * { margin: 0; padding: 0; box-sizing: border-box; }
 
  body {
    font-family: 'Segoe UI', sans-serif;
    min-height: 100vh;
    background: linear-gradient(135deg, #1a237e 0%, #4a148c 30%, #880e4f 65%, #b71c1c 100%);
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 20px 16px;
  }
  body.dashboard-mode {
    background: #f0f2f8;
    align-items: flex-start;
    padding: 0;
  }
 
  .page { display: none; width: 100%; }
  .page.active { display: flex; justify-content: center; align-items: center; }
  body.dashboard-mode .page.active { display: block; }
 
  .card {
    background: linear-gradient(145deg, rgba(255,255,255,0.92) 0%, rgba(230,235,255,0.88) 100%);
    backdrop-filter: blur(20px);
    border-radius: 24px;
    padding: 40px 36px;
    width: 100%;
    max-width: 400px;
    box-shadow: 0 24px 64px rgba(0,0,0,0.35), 0 4px 16px rgba(0,0,0,0.15);
    display: flex;
    flex-direction: column;
    align-items: center;
    animation: fadeUp 0.4s ease;
  }
  @keyframes fadeUp {
    from { opacity:0; transform:translateY(24px); }
    to   { opacity:1; transform:translateY(0); }
  }
 
  .icon-circle {
    width:64px; height:64px; border-radius:50%;
    background: linear-gradient(135deg,#1a237e,#4a0e8f);
    display:flex; align-items:center; justify-content:center;
    margin-bottom:16px;
    box-shadow:0 6px 20px rgba(26,35,126,0.45);
  }
  .icon-circle svg { fill:white; }
 
  .card-title {
    font-weight:800; font-size:26px;
    background:linear-gradient(90deg,#1a237e,#b71c1c);
    -webkit-background-clip:text; -webkit-text-fill-color:transparent;
    background-clip:text;
    margin-bottom:4px; text-align:center;
  }
  .card-sub { font-size:13.5px; color:#555; margin-bottom:24px; text-align:center; }
 
  .input-wrap { width:100%; position:relative; margin-bottom:14px; }
  .input-wrap label {
    position:absolute; top:-9px; left:10px;
    background:rgba(240,242,255,0.95);
    padding:0 4px; font-size:11px; color:#555;
  }
  .input-wrap .icon-left {
    position:absolute; left:12px; top:50%;
    transform:translateY(-50%); color:#555; pointer-events:none;
  }
  .input-wrap input {
    width:100%; border:1.5px solid #b0b8d1; border-radius:8px;
    padding:11px 12px 11px 40px; font-size:14px;
    background:rgba(255,255,255,0.75); outline:none;
    font-family:'Segoe UI',sans-serif; color:#222; transition:border 0.2s;
  }
  .input-wrap input:focus { border-color:#1565c0; }
  .input-wrap .eye-btn {
    position:absolute; right:12px; top:50%;
    transform:translateY(-50%); cursor:pointer; color:#555;
    background:none; border:none; padding:0;
  }
 
  .btn {
    width:100%; padding:13px 0; border:none; border-radius:10px;
    background:linear-gradient(90deg,#1565c0 0%,#7b1fa2 50%,#c62828 100%);
    color:#fff; font-size:15px; font-weight:700;
    font-family:'Segoe UI',sans-serif; cursor:pointer;
    letter-spacing:0.5px;
    box-shadow:0 4px 16px rgba(21,101,192,0.35);
    transition:opacity 0.2s, transform 0.1s;
    margin-top:8px;
  }
  .btn:hover { opacity:0.88; }
  .btn:active { transform:scale(0.98); }
 
  .forgot-row { width:100%; text-align:right; margin-bottom:4px; }
  .link { color:#1565c0; font-weight:600; cursor:pointer; }
  .link:hover { text-decoration:underline; }
  .bottom-text { margin-top:18px; font-size:13px; color:#444; text-align:center; }
 
  .otp-row { display:flex; gap:8px; margin-bottom:20px; justify-content:center; }
  .otp-box {
    width:44px; height:52px; text-align:center; font-size:22px; font-weight:700;
    border:1.5px solid #b0b8d1; border-radius:10px;
    background:rgba(255,255,255,0.8); outline:none;
    font-family:'Segoe UI',sans-serif; color:#1a237e; transition:border 0.2s;
  }
  .otp-box:focus { border-color:#1565c0; }
 
  .alert-box {
    width:100%; background:#ffebee; border:1px solid #ef9a9a;
    border-radius:8px; padding:8px 12px; font-size:13px;
    color:#c62828; margin-bottom:8px; display:none;
  }
 
  /* DASHBOARD */
  #dashboard-page { flex-direction:column; min-height:100vh; }
 
  nav {
    background:linear-gradient(90deg,#0d1b6e,#4a0e8f 60%,#8e0000);
    padding:0 28px; height:60px;
    display:flex; align-items:center; justify-content:space-between;
    box-shadow:0 2px 12px rgba(0,0,0,0.3);
  }
  .nav-left { display:flex; align-items:center; gap:10px; }
  .nav-icon {
    width:36px; height:36px; border-radius:50%;
    background:linear-gradient(135deg,#1a237e,#4a0e8f);
    display:flex; align-items:center; justify-content:center;
    box-shadow:0 4px 12px rgba(26,35,126,0.4);
  }
  .nav-icon svg { fill:white; }
  .nav-title { color:#fff; font-weight:800; font-size:18px; }
  .nav-right { display:flex; align-items:center; gap:16px; }
  .nav-user {
    background:rgba(255,255,255,0.15); border-radius:20px;
    padding:6px 16px; display:flex; align-items:center; gap:8px;
  }
  .avatar {
    width:30px; height:30px; border-radius:50%;
    background:linear-gradient(135deg,#42a5f5,#1a237e);
    display:flex; align-items:center; justify-content:center;
    color:#fff; font-size:13px; font-weight:700;
  }
  .nav-user span { color:#fff; font-size:13px; }
  .signout-btn {
    background:rgba(255,255,255,0.18); border:1px solid rgba(255,255,255,0.3);
    color:#fff; border-radius:8px; padding:6px 16px;
    cursor:pointer; font-size:13px; font-family:'Segoe UI',sans-serif;
    transition:background 0.2s;
  }
  .signout-btn:hover { background:rgba(255,255,255,0.28); }
 
  .stats-grid {
    padding:24px 28px 0;
    display:grid; grid-template-columns:repeat(auto-fit,minmax(180px,1fr)); gap:16px;
  }
  .stat-card {
    background:#fff; border-radius:14px; padding:18px 20px;
    box-shadow:0 2px 12px rgba(0,0,0,0.08);
    display:flex; align-items:center; gap:14px;
  }
  .stat-emoji { font-size:28px; }
  .stat-num { font-size:26px; font-weight:800; line-height:1.1; }
  .stat-label { font-size:12px; color:#777; }
 
  .table-section { padding:20px 28px 28px; flex:1; }
  .table-card {
    background:#fff; border-radius:16px;
    box-shadow:0 2px 16px rgba(0,0,0,0.08); overflow:hidden;
  }
  .table-header {
    padding:16px 20px;
    display:flex; align-items:center; justify-content:space-between;
    border-bottom:1px solid #eee;
  }
  .table-header-title { font-weight:700; font-size:16px; color:#1a237e; }
  .search-wrap { position:relative; }
  .search-wrap .search-icon {
    position:absolute; left:10px; top:50%;
    transform:translateY(-50%); font-size:14px; color:#aaa;
  }
  .search-wrap input {
    border:1.5px solid #ddd; border-radius:8px;
    padding:7px 12px 7px 32px; font-size:13px; outline:none;
    font-family:'Segoe UI',sans-serif; width:220px; transition:border 0.2s;
  }
  .search-wrap input:focus { border-color:#1565c0; }
 
  table { width:100%; border-collapse:collapse; }
  thead tr { background:linear-gradient(90deg,#e8eaf6,#f3e5f5); }
  th {
    padding:11px 16px; text-align:left; font-size:12px;
    font-weight:700; color:#3949ab; letter-spacing:0.5px; text-transform:uppercase;
  }
  td { padding:12px 16px; font-size:13px; }
  tbody tr { transition:background 0.15s; }
  tbody tr:nth-child(even) { background:#fafbff; }
  tbody tr:hover { background:#f0f4ff !important; }
 
  .cust-name-cell { display:flex; align-items:center; gap:8px; }
  .cust-avatar {
    width:32px; height:32px; border-radius:50%;
    background:linear-gradient(135deg,#1565c0,#7b1fa2);
    display:flex; align-items:center; justify-content:center;
    color:#fff; font-weight:700; font-size:13px; flex-shrink:0;
  }
  .cust-name { font-weight:600; color:#222; font-size:14px; }
 
  .badge { padding:3px 12px; border-radius:20px; font-size:12px; font-weight:600; display:inline-block; }
  .badge-active   { background:#e8f5e9; color:#2e7d32; }
  .badge-inactive { background:#ffebee; color:#c62828; }
  .badge-pending  { background:#fff3e0; color:#e65100; }
  .no-results { padding:32px; text-align:center; color:#aaa; }
 
  .toast {
    position:fixed; bottom:24px; left:50%; transform:translateX(-50%);
    background:#2e7d32; color:#fff; padding:12px 24px;
    border-radius:10px; font-size:14px; font-weight:600;
    box-shadow:0 4px 16px rgba(0,0,0,0.25);
    opacity:0; transition:opacity 0.3s; pointer-events:none; z-index:999;
  }
  .toast.show { opacity:1; }
</style>
</head>
<body>
 
<!-- LOGIN -->
<div class="page active" id="login-page">
  <div class="card">
    <div class="icon-circle">
      <svg width="28" height="28" viewBox="0 0 24 24"><path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"/></svg>
    </div>
    <div class="card-title">Welcome Back</div>
    <div class="card-sub">Sign in to manage your customers</div>
    <div class="alert-box" id="login-alert"></div>
    <div class="input-wrap">
      <label>Email *</label>
      <span class="icon-left"><svg width="16" height="16" viewBox="0 0 24 24" fill="#555"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/></svg></span>
      <input type="email" id="login-email" />
    </div>
    <div class="input-wrap">
      <label>Password *</label>
      <span class="icon-left"><svg width="16" height="16" viewBox="0 0 24 24" fill="#555"><path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"/></svg></span>
      <input type="password" id="login-password" />
      <button class="eye-btn" onclick="toggleEye('login-password',this)">&#128065;</button>
    </div>
    <div class="forgot-row">
      <span class="link" onclick="navigate('forgot-page')">Forgot password?</span>
    </div>
    <button class="btn" onclick="doLogin()">Sign In</button>
    <div class="bottom-text">New here? <span class="link" onclick="navigate('register-page')">Create an account</span></div>
  </div>
</div>
 
<!-- REGISTER -->
<div class="page" id="register-page">
  <div class="card">
    <div class="icon-circle">
      <svg width="28" height="28" viewBox="0 0 24 24"><path d="M15 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm-9-2V7H4v3H1v2h3v3h2v-3h3v-2H6zm9 4c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg>
    </div>
    <div class="card-title">Create Account</div>
    <div class="card-sub">Join us to start managing customers</div>
    <div class="alert-box" id="register-alert"></div>
    <div class="input-wrap">
      <label>Full name *</label>
      <span class="icon-left"><svg width="16" height="16" viewBox="0 0 24 24" fill="#555"><path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg></span>
      <input type="text" id="reg-name" />
    </div>
    <div class="input-wrap">
      <label>Email *</label>
      <span class="icon-left"><svg width="16" height="16" viewBox="0 0 24 24" fill="#555"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/></svg></span>
      <input type="email" id="reg-email" />
    </div>
    <div class="input-wrap">
      <label>Password *</label>
      <span class="icon-left"><svg width="16" height="16" viewBox="0 0 24 24" fill="#555"><path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"/></svg></span>
      <input type="password" id="reg-password" />
      <button class="eye-btn" onclick="toggleEye('reg-password',this)">&#128065;</button>
    </div>
    <button class="btn" onclick="doRegister()">Create Account</button>
    <div class="bottom-text">Already have an account? <span class="link" onclick="navigate('login-page')">Sign in</span></div>
  </div>
</div>
 
<!-- FORGOT -->
<div class="page" id="forgot-page">
  <div class="card">
    <div class="icon-circle">
      <svg width="28" height="28" viewBox="0 0 24 24"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/></svg>
    </div>
    <div class="card-title">Forgot Password</div>
    <div class="card-sub">Enter your email and we'll send you a verification code</div>
    <div class="alert-box" id="forgot-alert"></div>
    <div class="input-wrap">
      <label>Email *</label>
      <span class="icon-left"><svg width="16" height="16" viewBox="0 0 24 24" fill="#555"><path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/></svg></span>
      <input type="email" id="forgot-email" />
    </div>
    <button class="btn" onclick="doForgot()">Send OTP</button>
    <div class="bottom-text">Remembered it? <span class="link" onclick="navigate('login-page')">Back to sign in</span></div>
  </div>
</div>
 
<!-- OTP -->
<div class="page" id="otp-page">
  <div class="card">
    <div class="icon-circle">
      <svg width="28" height="28" viewBox="0 0 24 24"><path d="M12 1L3 5v6c0 5.55 3.84 10.74 9 12 5.16-1.26 9-6.45 9-12V5l-9-4zm0 4l5 2.18V11c0 3.5-2.33 6.79-5 7.93-2.67-1.14-5-4.43-5-7.93V7.18L12 5z"/></svg>
    </div>
    <div class="card-title">Enter OTP</div>
    <div class="card-sub">We sent a 6-digit code to your email</div>
    <div class="alert-box" id="otp-alert"></div>
    <div class="otp-row">
      <input class="otp-box" maxlength="1" type="text" inputmode="numeric" id="otp0" oninput="otpMove(this,0)" onkeydown="otpBack(event,0)"/>
      <input class="otp-box" maxlength="1" type="text" inputmode="numeric" id="otp1" oninput="otpMove(this,1)" onkeydown="otpBack(event,1)"/>
      <input class="otp-box" maxlength="1" type="text" inputmode="numeric" id="otp2" oninput="otpMove(this,2)" onkeydown="otpBack(event,2)"/>
      <input class="otp-box" maxlength="1" type="text" inputmode="numeric" id="otp3" oninput="otpMove(this,3)" onkeydown="otpBack(event,3)"/>
      <input class="otp-box" maxlength="1" type="text" inputmode="numeric" id="otp4" oninput="otpMove(this,4)" onkeydown="otpBack(event,4)"/>
      <input class="otp-box" maxlength="1" type="text" inputmode="numeric" id="otp5" oninput="otpMove(this,5)" onkeydown="otpBack(event,5)"/>
    </div>
    <button class="btn" onclick="doOTP()">Verify OTP</button>
    <div class="bottom-text">Didn't receive? <span class="link" onclick="showToast('OTP resent!')">Resend OTP</span></div>
  </div>
</div>
 
<!-- CONFIRM PASSWORD -->
<div class="page" id="confirm-page">
  <div class="card">
    <div class="icon-circle">
      <svg width="28" height="28" viewBox="0 0 24 24"><path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"/></svg>
    </div>
    <div class="card-title">Reset Password</div>
    <div class="card-sub">Create your new password</div>
    <div class="alert-box" id="confirm-alert"></div>
    <div class="input-wrap">
      <label>New Password *</label>
      <span class="icon-left"><svg width="16" height="16" viewBox="0 0 24 24" fill="#555"><path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"/></svg></span>
      <input type="password" id="new-pw" />
      <button class="eye-btn" onclick="toggleEye('new-pw',this)">&#128065;</button>
    </div>
    <div class="input-wrap">
      <label>Confirm Password *</label>
      <span class="icon-left"><svg width="16" height="16" viewBox="0 0 24 24" fill="#555"><path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"/></svg></span>
      <input type="password" id="confirm-pw" />
      <button class="eye-btn" onclick="toggleEye('confirm-pw',this)">&#128065;</button>
    </div>
    <button class="btn" onclick="doConfirm()">Confirm Password</button>
    <div class="bottom-text"><span class="link" onclick="navigate('login-page')">&#8592; Back to sign in</span></div>
  </div>
</div>
 
<!-- DASHBOARD -->
<div class="page" id="dashboard-page">
  <nav>
    <div class="nav-left">
      <div class="nav-icon">
        <svg width="20" height="20" viewBox="0 0 24 24"><path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5c-1.66 0-3 1.34-3 3s1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5C6.34 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z"/></svg>
      </div>
      <span class="nav-title">Customer Management</span>
    </div>
    <div class="nav-right">
      <div class="nav-user">
        <div class="avatar">A</div>
        <span>Admin</span>
      </div>
      <button class="signout-btn" onclick="doSignout()">Sign Out</button>
    </div>
  </nav>
 
  <div class="stats-grid">
    <div class="stat-card" style="border-left:4px solid #1565c0">
      <span class="stat-emoji">&#128101;</span>
      <div><div class="stat-num" style="color:#1565c0">5</div><div class="stat-label">Total Customers</div></div>
    </div>
    <div class="stat-card" style="border-left:4px solid #2e7d32">
      <span class="stat-emoji">&#9989;</span>
      <div><div class="stat-num" style="color:#2e7d32">3</div><div class="stat-label">Active</div></div>
    </div>
    <div class="stat-card" style="border-left:4px solid #c62828">
      <span class="stat-emoji">&#9940;</span>
      <div><div class="stat-num" style="color:#c62828">1</div><div class="stat-label">Inactive</div></div>
    </div>
    <div class="stat-card" style="border-left:4px solid #e65100">
      <span class="stat-emoji">&#9203;</span>
      <div><div class="stat-num" style="color:#e65100">1</div><div class="stat-label">Pending</div></div>
    </div>
  </div>
 
  <div class="table-section">
    <div class="table-card">
      <div class="table-header">
        <span class="table-header-title">All Customers</span>
        <div class="search-wrap">
          <span class="search-icon">&#128269;</span>
          <input type="text" placeholder="Search customers..." id="search-input" oninput="filterTable()" />
        </div>
      </div>
      <table>
        <thead>
          <tr><th>#</th><th>Name</th><th>Email</th><th>Phone</th><th>Status</th><th>Joined</th></tr>
        </thead>
        <tbody id="customer-tbody"></tbody>
      </table>
      <div class="no-results" id="no-results" style="display:none">No customers found.</div>
    </div>
  </div>
</div>
 
<div class="toast" id="toast"></div>
 
<script>
const customers = [
  {id:1,name:"Anita Sharma", email:"anita@example.com", phone:"+91 98765 43210",status:"Active",  joined:"Jan 2024"},
  {id:2,name:"Ravi Patel",   email:"ravi@example.com",  phone:"+91 87654 32109",status:"Active",  joined:"Feb 2024"},
  {id:3,name:"Meera Singh",  email:"meera@example.com", phone:"+91 76543 21098",status:"Inactive",joined:"Mar 2024"},
  {id:4,name:"Arjun Nair",   email:"arjun@example.com", phone:"+91 65432 10987",status:"Active",  joined:"Apr 2024"},
  {id:5,name:"Priya Reddy",  email:"priya@example.com", phone:"+91 54321 09876",status:"Pending", joined:"May 2024"},
];
 
function navigate(pageId) {
  document.querySelectorAll('.page').forEach(p => p.classList.remove('active'));
  document.getElementById(pageId).classList.add('active');
  if (pageId === 'dashboard-page') {
    document.body.classList.add('dashboard-mode');
    renderTable(customers);
  } else {
    document.body.classList.remove('dashboard-mode');
  }
}
 
function showAlert(id, msg) {
  const el = document.getElementById(id);
  el.textContent = msg;
  el.style.display = 'block';
  setTimeout(() => { el.style.display = 'none'; }, 3500);
}
 
function showToast(msg) {
  const t = document.getElementById('toast');
  t.textContent = msg;
  t.classList.add('show');
  setTimeout(() => t.classList.remove('show'), 2500);
}
 
function toggleEye(inputId, btn) {
  const input = document.getElementById(inputId);
  if (input.type === 'password') {
    input.type = 'text';
    btn.textContent = '\uD83D\uDEAB';
  } else {
    input.type = 'password';
    btn.textContent = '\uD83D\uDC41';
  }
}
 
function otpMove(input, idx) {
  input.value = input.value.replace(/\D/g,'');
  if (input.value && idx < 5) document.getElementById('otp'+(idx+1)).focus();
}
function otpBack(e, idx) {
  if (e.key === 'Backspace' && !document.getElementById('otp'+idx).value && idx > 0) {
    document.getElementById('otp'+(idx-1)).focus();
  }
}
 
function doLogin() {
  const email = document.getElementById('login-email').value.trim();
  const pw    = document.getElementById('login-password').value;
  if (!email || !pw) {
    showAlert('login-alert', 'Please enter your email and password.');
    return;
  }
  navigate('dashboard-page');
}
 
function doRegister() {
  const name  = document.getElementById('reg-name').value.trim();
  const email = document.getElementById('reg-email').value.trim();
  const pw    = document.getElementById('reg-password').value;
  if (!name || !email || !pw) {
    showAlert('register-alert', 'Please fill in all fields.');
    return;
  }
  showToast('Account created! Please sign in.');
  navigate('login-page');
}
 
function doForgot() {
  const email = document.getElementById('forgot-email').value.trim();
  if (!email) {
    showAlert('forgot-alert', 'Please enter your email.');
    return;
  }
  showToast('OTP sent to ' + email);
  navigate('otp-page');
}
 
function doOTP() {
  let code = '';
  for (let i = 0; i < 6; i++) code += document.getElementById('otp'+i).value;
  if (code.length < 6) {
    showAlert('otp-alert', 'Please enter all 6 digits.');
    return;
  }
  navigate('confirm-page');
}
 
function doConfirm() {
  const pw1 = document.getElementById('new-pw').value;
  const pw2 = document.getElementById('confirm-pw').value;
  if (!pw1 || !pw2) { showAlert('confirm-alert','Please fill in both fields.'); return; }
  if (pw1 !== pw2)  { showAlert('confirm-alert','Passwords do not match.'); return; }
  showToast('Password reset successfully!');
  navigate('login-page');
}
 
function doSignout() {
  document.getElementById('login-email').value = '';
  document.getElementById('login-password').value = '';
  navigate('login-page');
}
 
function badgeClass(s) {
  return s==='Active'?'badge-active': s==='Inactive'?'badge-inactive':'badge-pending';
}
 
function renderTable(data) {
  const tbody = document.getElementById('customer-tbody');
  const noRes = document.getElementById('no-results');
  if (!data.length) { tbody.innerHTML=''; noRes.style.display='block'; return; }
  noRes.style.display='none';
  tbody.innerHTML = data.map(c => `
    <tr>
      <td style="color:#888">${c.id}</td>
      <td><div class="cust-name-cell"><div class="cust-avatar">${c.name[0]}</div><span class="cust-name">${c.name}</span></div></td>
      <td style="color:#555">${c.email}</td>
      <td style="color:#555">${c.phone}</td>
      <td><span class="badge ${badgeClass(c.status)}">${c.status}</span></td>
      <td style="color:#777">${c.joined}</td>
    </tr>`).join('');
}
 
function filterTable() {
  const q = document.getElementById('search-input').value.toLowerCase();
  renderTable(customers.filter(c => c.name.toLowerCase().includes(q) || c.email.toLowerCase().includes(q)));
}
</script>
</body>
</html>
 
