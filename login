import { useState } from "react";

// ── Inline styles / design tokens ──────────────────────────────────────────
const BG_GRADIENT =
  "linear-gradient(135deg, #1a237e 0%, #4a148c 30%, #880e4f 65%, #b71c1c 100%)";

const CARD_STYLE = {
  background: "linear-gradient(145deg, rgba(255,255,255,0.92) 0%, rgba(230,235,255,0.88) 100%)",
  backdropFilter: "blur(20px)",
  borderRadius: 24,
  padding: "40px 36px",
  width: "100%",
  maxWidth: 400,
  boxShadow: "0 24px 64px rgba(0,0,0,0.35), 0 4px 16px rgba(0,0,0,0.15)",
  display: "flex",
  flexDirection: "column",
  alignItems: "center",
  gap: 0,
};

const ICON_CIRCLE = {
  width: 64,
  height: 64,
  borderRadius: "50%",
  background: "linear-gradient(135deg, #1a237e 0%, #4a0e8f 100%)",
  display: "flex",
  alignItems: "center",
  justifyContent: "center",
  marginBottom: 16,
  boxShadow: "0 6px 20px rgba(26,35,126,0.45)",
};

const TITLE_STYLE = {
  fontFamily: "'Segoe UI', sans-serif",
  fontWeight: 800,
  fontSize: 26,
  background: "linear-gradient(90deg, #1a237e 0%, #b71c1c 100%)",
  WebkitBackgroundClip: "text",
  WebkitTextFillColor: "transparent",
  backgroundClip: "text",
  marginBottom: 4,
  textAlign: "center",
};

const SUB_STYLE = {
  fontFamily: "'Segoe UI', sans-serif",
  fontSize: 13.5,
  color: "#555",
  marginBottom: 24,
  textAlign: "center",
};

const INPUT_WRAP = {
  width: "100%",
  position: "relative",
  marginBottom: 14,
};

const INPUT_STYLE = {
  width: "100%",
  border: "1.5px solid #b0b8d1",
  borderRadius: 8,
  padding: "11px 12px 11px 40px",
  fontSize: 14,
  background: "rgba(255,255,255,0.75)",
  outline: "none",
  fontFamily: "'Segoe UI', sans-serif",
  color: "#222",
  boxSizing: "border-box",
  transition: "border 0.2s",
};

const ICON_IN_INPUT = {
  position: "absolute",
  left: 12,
  top: "50%",
  transform: "translateY(-50%)",
  color: "#555",
  fontSize: 16,
  pointerEvents: "none",
};

const LABEL_STYLE = {
  position: "absolute",
  top: -9,
  left: 10,
  background: "rgba(240,242,255,0.95)",
  padding: "0 4px",
  fontSize: 11,
  color: "#555",
  fontFamily: "'Segoe UI', sans-serif",
};

const BTN_STYLE = {
  width: "100%",
  padding: "13px 0",
  border: "none",
  borderRadius: 10,
  background: "linear-gradient(90deg, #1565c0 0%, #7b1fa2 50%, #c62828 100%)",
  color: "#fff",
  fontSize: 15,
  fontWeight: 700,
  fontFamily: "'Segoe UI', sans-serif",
  cursor: "pointer",
  letterSpacing: 0.5,
  boxShadow: "0 4px 16px rgba(21,101,192,0.35)",
  transition: "opacity 0.2s, transform 0.1s",
  marginTop: 8,
};

const LINK_ROW = {
  marginTop: 18,
  fontSize: 13,
  fontFamily: "'Segoe UI', sans-serif",
  color: "#444",
  textAlign: "center",
};

const LINK_STYLE = {
  color: "#1565c0",
  fontWeight: 600,
  cursor: "pointer",
  textDecoration: "none",
};

// ── SVG icons (matching the app's icons) ────────────────────────────────────
const IconLock = () => (
  <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
    <path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z" />
  </svg>
);
const IconEmail = () => (
  <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
    <path d="M20 4H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z" />
  </svg>
);
const IconPerson = () => (
  <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
    <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z" />
  </svg>
);
const IconEye = ({ show, onClick }) => (
  <span
    onClick={onClick}
    style={{ position: "absolute", right: 12, top: "50%", transform: "translateY(-50%)", cursor: "pointer", color: "#555" }}
  >
    {show ? (
      <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
        <path d="M12 4.5C7 4.5 2.73 7.61 1 12c1.73 4.39 6 7.5 11 7.5s9.27-3.11 11-7.5c-1.73-4.39-6-7.5-11-7.5zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z" />
      </svg>
    ) : (
      <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
        <path d="M12 7c2.76 0 5 2.24 5 5 0 .65-.13 1.26-.36 1.83l2.92 2.92c1.51-1.26 2.7-2.89 3.43-4.75-1.73-4.39-6-7.5-11-7.5-1.4 0-2.74.25-3.98.7l2.16 2.16C10.74 7.13 11.35 7 12 7zM2 4.27l2.28 2.28.46.46C3.08 8.3 1.78 10.02 1 12c1.73 4.39 6 7.5 11 7.5 1.55 0 3.03-.3 4.38-.84l.42.42L19.73 22 21 20.73 3.27 3 2 4.27zM7.53 9.8l1.55 1.55c-.05.21-.08.43-.08.65 0 1.66 1.34 3 3 3 .22 0 .44-.03.65-.08l1.55 1.55c-.67.33-1.41.53-2.2.53-2.76 0-5-2.24-5-5 0-.79.2-1.53.53-2.2zm4.31-.78l3.15 3.15.02-.16c0-1.66-1.34-3-3-3l-.17.01z" />
      </svg>
    )}
  </span>
);

// ── Reusable InputField ──────────────────────────────────────────────────────
function InputField({ label, icon, type = "text", value, onChange, rightEl, placeholder }) {
  return (
    <div style={INPUT_WRAP}>
      <label style={LABEL_STYLE}>{label}</label>
      <span style={ICON_IN_INPUT}>{icon}</span>
      <input
        style={{ ...INPUT_STYLE, paddingRight: rightEl ? 40 : 12 }}
        type={type}
        value={value}
        onChange={onChange}
        placeholder={placeholder || ""}
        onFocus={e => (e.target.style.border = "1.5px solid #1565c0")}
        onBlur={e => (e.target.style.border = "1.5px solid #b0b8d1")}
      />
      {rightEl}
    </div>
  );
}

// ── Page: Login ──────────────────────────────────────────────────────────────
function LoginPage({ navigate }) {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [show, setShow] = useState(false);

  return (
    <div style={CARD_STYLE}>
      <div style={ICON_CIRCLE}><IconLock /></div>
      <div style={TITLE_STYLE}>Welcome Back</div>
      <div style={SUB_STYLE}>Sign in to manage your customers</div>

      <InputField label="Email *" icon={<IconEmail />} type="email"
        value={email} onChange={e => setEmail(e.target.value)} />
      <InputField label="Password *" icon={<IconLock />}
        type={show ? "text" : "password"} value={password}
        onChange={e => setPassword(e.target.value)}
        rightEl={<IconEye show={show} onClick={() => setShow(!show)} />} />

      <div style={{ width: "100%", textAlign: "right", marginBottom: 4 }}>
        <span style={LINK_STYLE} onClick={() => navigate("forgot")}>Forgot password?</span>
      </div>

      <button style={BTN_STYLE}
        onMouseEnter={e => (e.target.style.opacity = 0.88)}
        onMouseLeave={e => (e.target.style.opacity = 1)}
        onClick={() => navigate("dashboard")}>
        Sign In
      </button>

      <div style={LINK_ROW}>
        New here?{" "}
        <span style={LINK_STYLE} onClick={() => navigate("register")}>Create an account</span>
      </div>
    </div>
  );
}

// ── Page: Register ───────────────────────────────────────────────────────────
function RegisterPage({ navigate }) {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  return (
    <div style={CARD_STYLE}>
      <div style={ICON_CIRCLE}>
        <svg width="28" height="28" viewBox="0 0 24 24" fill="white">
          <path d="M15 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm-9-2V7H4v3H1v2h3v3h2v-3h3v-2H6zm9 4c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z" />
        </svg>
      </div>
      <div style={TITLE_STYLE}>Create Account</div>
      <div style={SUB_STYLE}>Join us to start managing customers</div>

      <InputField label="Full name *" icon={<IconPerson />}
        value={name} onChange={e => setName(e.target.value)} />
      <InputField label="Email *" icon={<IconEmail />} type="email"
        value={email} onChange={e => setEmail(e.target.value)} />
      <InputField label="Password *" icon={<IconLock />} type="password"
        value={password} onChange={e => setPassword(e.target.value)} />

      <button style={BTN_STYLE}
        onMouseEnter={e => (e.target.style.opacity = 0.88)}
        onMouseLeave={e => (e.target.style.opacity = 1)}
        onClick={() => navigate("login")}>
        Create Account
      </button>

      <div style={LINK_ROW}>
        Already have an account?{" "}
        <span style={LINK_STYLE} onClick={() => navigate("login")}>Sign in</span>
      </div>
    </div>
  );
}

// ── Page: Forgot Password ────────────────────────────────────────────────────
function ForgotPage({ navigate }) {
  const [email, setEmail] = useState("");

  return (
    <div style={CARD_STYLE}>
      <div style={ICON_CIRCLE}><IconEmail /></div>
      <div style={TITLE_STYLE}>Forgot Password</div>
      <div style={SUB_STYLE}>Enter your email and we'll send you a verification code</div>

      <InputField label="Email *" icon={<IconEmail />} type="email"
        value={email} onChange={e => setEmail(e.target.value)} />

      <button style={BTN_STYLE}
        onMouseEnter={e => (e.target.style.opacity = 0.88)}
        onMouseLeave={e => (e.target.style.opacity = 1)}
        onClick={() => navigate("otp")}>
        Send OTP
      </button>

      <div style={LINK_ROW}>
        Remembered it?{" "}
        <span style={LINK_STYLE} onClick={() => navigate("login")}>Back to sign in</span>
      </div>
    </div>
  );
}

// ── Page: OTP ────────────────────────────────────────────────────────────────
function OTPPage({ navigate }) {
  const [otp, setOtp] = useState(["", "", "", "", "", ""]);

  const handleChange = (val, idx) => {
    if (!/^\d?$/.test(val)) return;
    const next = [...otp];
    next[idx] = val;
    setOtp(next);
    if (val && idx < 5) document.getElementById(`otp-${idx + 1}`)?.focus();
  };

  return (
    <div style={CARD_STYLE}>
      <div style={ICON_CIRCLE}>
        <svg width="26" height="26" viewBox="0 0 24 24" fill="white">
          <path d="M12 1L3 5v6c0 5.55 3.84 10.74 9 12 5.16-1.26 9-6.45 9-12V5l-9-4zm0 4l5 2.18V11c0 3.5-2.33 6.79-5 7.93-2.67-1.14-5-4.43-5-7.93V7.18L12 5z" />
        </svg>
      </div>
      <div style={TITLE_STYLE}>Enter OTP</div>
      <div style={SUB_STYLE}>We sent a 6-digit code to your email</div>

      <div style={{ display: "flex", gap: 8, marginBottom: 20, justifyContent: "center" }}>
        {otp.map((d, i) => (
          <input
            key={i}
            id={`otp-${i}`}
            maxLength={1}
            value={d}
            onChange={e => handleChange(e.target.value, i)}
            style={{
              width: 44, height: 52, textAlign: "center", fontSize: 22, fontWeight: 700,
              border: "1.5px solid #b0b8d1", borderRadius: 10,
              background: "rgba(255,255,255,0.8)", outline: "none",
              fontFamily: "'Segoe UI', sans-serif", color: "#1a237e",
            }}
            onFocus={e => (e.target.style.border = "1.5px solid #1565c0")}
            onBlur={e => (e.target.style.border = "1.5px solid #b0b8d1")}
          />
        ))}
      </div>

      <button style={BTN_STYLE}
        onMouseEnter={e => (e.target.style.opacity = 0.88)}
        onMouseLeave={e => (e.target.style.opacity = 1)}
        onClick={() => navigate("confirm")}>
        Verify OTP
      </button>

      <div style={LINK_ROW}>
        Didn't receive?{" "}
        <span style={LINK_STYLE}>Resend OTP</span>
      </div>
    </div>
  );
}

// ── Page: Confirm Password ───────────────────────────────────────────────────
function ConfirmPage({ navigate }) {
  const [pw, setPw] = useState("");
  const [cpw, setCpw] = useState("");
  const [show1, setShow1] = useState(false);
  const [show2, setShow2] = useState(false);

  return (
    <div style={CARD_STYLE}>
      <div style={ICON_CIRCLE}><IconLock /></div>
      <div style={TITLE_STYLE}>Reset Password</div>
      <div style={SUB_STYLE}>Create your new password</div>

      <InputField label="New Password *" icon={<IconLock />}
        type={show1 ? "text" : "password"} value={pw}
        onChange={e => setPw(e.target.value)}
        rightEl={<IconEye show={show1} onClick={() => setShow1(!show1)} />} />
      <InputField label="Confirm Password *" icon={<IconLock />}
        type={show2 ? "text" : "password"} value={cpw}
        onChange={e => setCpw(e.target.value)}
        rightEl={<IconEye show={show2} onClick={() => setShow2(!show2)} />} />

      <button style={BTN_STYLE}
        onMouseEnter={e => (e.target.style.opacity = 0.88)}
        onMouseLeave={e => (e.target.style.opacity = 1)}
        onClick={() => navigate("login")}>
        Confirm Password
      </button>

      <div style={LINK_ROW}>
        <span style={LINK_STYLE} onClick={() => navigate("login")}>← Back to sign in</span>
      </div>
    </div>
  );
}

// ── Page: Dashboard ──────────────────────────────────────────────────────────
const customers = [
  { id: 1, name: "Anita Sharma", email: "anita@example.com", phone: "+91 98765 43210", status: "Active", joined: "Jan 2024" },
  { id: 2, name: "Ravi Patel",   email: "ravi@example.com",  phone: "+91 87654 32109", status: "Active", joined: "Feb 2024" },
  { id: 3, name: "Meera Singh",  email: "meera@example.com", phone: "+91 76543 21098", status: "Inactive", joined: "Mar 2024" },
  { id: 4, name: "Arjun Nair",   email: "arjun@example.com", phone: "+91 65432 10987", status: "Active", joined: "Apr 2024" },
  { id: 5, name: "Priya Reddy",  email: "priya@example.com", phone: "+91 54321 09876", status: "Pending", joined: "May 2024" },
];

function DashboardPage({ navigate }) {
  const [search, setSearch] = useState("");
  const filtered = customers.filter(c =>
    c.name.toLowerCase().includes(search.toLowerCase()) ||
    c.email.toLowerCase().includes(search.toLowerCase())
  );

  return (
    <div style={{ width: "100%", minHeight: "100vh", display: "flex", flexDirection: "column" }}>
      {/* Top nav */}
      <nav style={{
        background: "linear-gradient(90deg, #0d1b6e 0%, #4a0e8f 60%, #8e0000 100%)",
        padding: "0 28px", height: 60, display: "flex", alignItems: "center",
        justifyContent: "space-between", boxShadow: "0 2px 12px rgba(0,0,0,0.3)",
      }}>
        <div style={{ display: "flex", alignItems: "center", gap: 10 }}>
          <div style={{ ...ICON_CIRCLE, width: 36, height: 36, marginBottom: 0 }}>
            <svg width="18" height="18" viewBox="0 0 24 24" fill="white">
              <path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5c-1.66 0-3 1.34-3 3s1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5C6.34 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z" />
            </svg>
          </div>
          <span style={{ color: "#fff", fontWeight: 800, fontSize: 18, fontFamily: "'Segoe UI', sans-serif", letterSpacing: 0.3 }}>
            Customer Management
          </span>
        </div>
        <div style={{ display: "flex", alignItems: "center", gap: 16 }}>
          <div style={{
            background: "rgba(255,255,255,0.15)", borderRadius: 20, padding: "6px 16px",
            display: "flex", alignItems: "center", gap: 8,
          }}>
            <div style={{ width: 30, height: 30, borderRadius: "50%", background: "linear-gradient(135deg,#42a5f5,#1a237e)", display: "flex", alignItems: "center", justifyContent: "center" }}>
              <span style={{ color: "#fff", fontSize: 13, fontWeight: 700 }}>A</span>
            </div>
            <span style={{ color: "#fff", fontSize: 13, fontFamily: "'Segoe UI', sans-serif" }}>Admin</span>
          </div>
          <button onClick={() => navigate("login")} style={{
            background: "rgba(255,255,255,0.18)", border: "1px solid rgba(255,255,255,0.3)",
            color: "#fff", borderRadius: 8, padding: "6px 16px", cursor: "pointer",
            fontSize: 13, fontFamily: "'Segoe UI', sans-serif",
          }}>Sign Out</button>
        </div>
      </nav>

      {/* Stat cards */}
      <div style={{
        padding: "24px 28px 0", display: "grid",
        gridTemplateColumns: "repeat(auto-fit, minmax(180px, 1fr))", gap: 16,
      }}>
        {[
          { label: "Total Customers", value: "5", color: "#1565c0", icon: "👥" },
          { label: "Active", value: "3", color: "#2e7d32", icon: "✅" },
          { label: "Inactive", value: "1", color: "#c62828", icon: "⛔" },
          { label: "Pending", value: "1", color: "#e65100", icon: "⏳" },
        ].map(s => (
          <div key={s.label} style={{
            background: "#fff", borderRadius: 14, padding: "18px 20px",
            boxShadow: "0 2px 12px rgba(0,0,0,0.08)",
            borderLeft: `4px solid ${s.color}`,
            display: "flex", alignItems: "center", gap: 14,
          }}>
            <span style={{ fontSize: 28 }}>{s.icon}</span>
            <div>
              <div style={{ fontSize: 26, fontWeight: 800, color: s.color, fontFamily: "'Segoe UI', sans-serif", lineHeight: 1.1 }}>{s.value}</div>
              <div style={{ fontSize: 12, color: "#777", fontFamily: "'Segoe UI', sans-serif" }}>{s.label}</div>
            </div>
          </div>
        ))}
      </div>

      {/* Table */}
      <div style={{ padding: "20px 28px 28px", flex: 1 }}>
        <div style={{ background: "#fff", borderRadius: 16, boxShadow: "0 2px 16px rgba(0,0,0,0.08)", overflow: "hidden" }}>
          {/* Table header row */}
          <div style={{
            padding: "16px 20px", display: "flex", alignItems: "center",
            justifyContent: "space-between", borderBottom: "1px solid #eee",
          }}>
            <span style={{ fontWeight: 700, fontSize: 16, fontFamily: "'Segoe UI', sans-serif", color: "#1a237e" }}>
              All Customers
            </span>
            <div style={{ position: "relative" }}>
              <span style={{ position: "absolute", left: 10, top: "50%", transform: "translateY(-50%)", color: "#aaa", fontSize: 14 }}>🔍</span>
              <input value={search} onChange={e => setSearch(e.target.value)}
                placeholder="Search customers..."
                style={{
                  border: "1.5px solid #ddd", borderRadius: 8, padding: "7px 12px 7px 32px",
                  fontSize: 13, outline: "none", fontFamily: "'Segoe UI', sans-serif",
                  width: 220,
                }} />
            </div>
          </div>

          <table style={{ width: "100%", borderCollapse: "collapse" }}>
            <thead>
              <tr style={{ background: "linear-gradient(90deg,#e8eaf6,#f3e5f5)", }}>
                {["#", "Name", "Email", "Phone", "Status", "Joined"].map(h => (
                  <th key={h} style={{
                    padding: "11px 16px", textAlign: "left", fontSize: 12,
                    fontWeight: 700, color: "#3949ab", fontFamily: "'Segoe UI', sans-serif",
                    letterSpacing: 0.5, textTransform: "uppercase",
                  }}>{h}</th>
                ))}
              </tr>
            </thead>
            <tbody>
              {filtered.map((c, i) => (
                <tr key={c.id} style={{ background: i % 2 === 0 ? "#fff" : "#fafbff", transition: "background 0.15s" }}
                  onMouseEnter={e => (e.currentTarget.style.background = "#f0f4ff")}
                  onMouseLeave={e => (e.currentTarget.style.background = i % 2 === 0 ? "#fff" : "#fafbff")}>
                  <td style={{ padding: "12px 16px", fontSize: 13, color: "#888", fontFamily: "'Segoe UI', sans-serif" }}>{c.id}</td>
                  <td style={{ padding: "12px 16px", fontSize: 14, fontWeight: 600, color: "#222", fontFamily: "'Segoe UI', sans-serif" }}>
                    <div style={{ display: "flex", alignItems: "center", gap: 8 }}>
                      <div style={{
                        width: 32, height: 32, borderRadius: "50%",
                        background: `linear-gradient(135deg, #1565c0, #7b1fa2)`,
                        display: "flex", alignItems: "center", justifyContent: "center",
                        color: "#fff", fontWeight: 700, fontSize: 13,
                      }}>{c.name[0]}</div>
                      {c.name}
                    </div>
                  </td>
                  <td style={{ padding: "12px 16px", fontSize: 13, color: "#555", fontFamily: "'Segoe UI', sans-serif" }}>{c.email}</td>
                  <td style={{ padding: "12px 16px", fontSize: 13, color: "#555", fontFamily: "'Segoe UI', sans-serif" }}>{c.phone}</td>
                  <td style={{ padding: "12px 16px" }}>
                    <span style={{
                      padding: "3px 12px", borderRadius: 20, fontSize: 12, fontWeight: 600,
                      fontFamily: "'Segoe UI', sans-serif",
                      background: c.status === "Active" ? "#e8f5e9" : c.status === "Inactive" ? "#ffebee" : "#fff3e0",
                      color: c.status === "Active" ? "#2e7d32" : c.status === "Inactive" ? "#c62828" : "#e65100",
                    }}>{c.status}</span>
                  </td>
                  <td style={{ padding: "12px 16px", fontSize: 13, color: "#777", fontFamily: "'Segoe UI', sans-serif" }}>{c.joined}</td>
                </tr>
              ))}
            </tbody>
          </table>

          {filtered.length === 0 && (
            <div style={{ padding: 32, textAlign: "center", color: "#aaa", fontFamily: "'Segoe UI', sans-serif" }}>
              No customers found.
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

// ── Root App ─────────────────────────────────────────────────────────────────
export default function App() {
  const [page, setPage] = useState("login");

  const isDash = page === "dashboard";

  return (
    <div style={{
      minHeight: "100vh",
      background: isDash ? "#f0f2f8" : BG_GRADIENT,
      display: "flex",
      alignItems: isDash ? "flex-start" : "center",
      justifyContent: "center",
      padding: isDash ? 0 : "20px 16px",
    }}>
      {page === "login"    && <LoginPage    navigate={setPage} />}
      {page === "register" && <RegisterPage navigate={setPage} />}
      {page === "forgot"   && <ForgotPage   navigate={setPage} />}
      {page === "otp"      && <OTPPage      navigate={setPage} />}
      {page === "confirm"  && <ConfirmPage  navigate={setPage} />}
      {page === "dashboard"&& <DashboardPage navigate={setPage} />}
    </div>
  );
}
