const express = require('express');
const bodyParser = require('body-parser');
const nodemailer = require('nodemailer');
const cors = require('cors');
const dotenv = require('dotenv');

// Load environment variables
dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(bodyParser.json());
app.use(express.static('.')); // Serve static files from the current directory

// Email configuration
const transporter = nodemailer.createTransport({
  host: process.env.EMAIL_HOST || 'smtp.gmail.com',
  port: parseInt(process.env.EMAIL_PORT || '587'),
  secure: process.env.EMAIL_SECURE === 'true',
  auth: {
    user: process.env.EMAIL_USER || 'extoll.co.in@gmail.com',
    pass: process.env.EMAIL_PASSWORD // Use an app password for Gmail
  }
});

// API Routes
app.post('/api/send-reset-email', async (req, res) => {
  try {
    const { email, resetUrl } = req.body;
    
    if (!email || !resetUrl) {
      return res.status(400).json({ error: 'Email and reset URL are required' });
    }

    // Create email content
    const mailOptions = {
      from: `"Extoll.Co Support" <${process.env.EMAIL_USER || 'extoll.co.in@gmail.com'}>`,
      to: email,
      subject: 'Password Reset Request - Extoll.Co',
      html: `
        <div style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto; padding: 20px; border: 1px solid #e0e0e0; border-radius: 10px;">
          <div style="text-align: center; margin-bottom: 20px;">
            <img src="https://extoll.co.in/images/logo.png" alt="Extoll.Co Logo" style="width: 100px; height: auto;">
          </div>
          <h2 style="color: #7e22ce; text-align: center;">Password Reset Request</h2>
          <p>Hello,</p>
          <p>We received a request to reset your password for your Extoll.Co account. To complete the process, please click the button below:</p>
          <div style="text-align: center; margin: 30px 0;">
            <a href="${resetUrl}" style="background-color: #7e22ce; color: white; padding: 12px 25px; text-decoration: none; border-radius: 25px; font-weight: bold; display: inline-block;">Reset Password</a>
          </div>
          <p>If you did not request a password reset, please ignore this email or contact support if you have concerns.</p>
          <p>This link will expire in 1 hour for security reasons.</p>
          <p>Thank you,<br>The Extoll.Co Team</p>
          <div style="margin-top: 20px; padding-top: 20px; border-top: 1px solid #e0e0e0; font-size: 12px; color: #757575; text-align: center;">
            <p>If you're having trouble clicking the button, copy and paste the URL below into your web browser:</p>
            <p>${resetUrl}</p>
            <p>&copy; 2024 Extoll.Co. All Rights Reserved.</p>
          </div>
        </div>
      `
    };

    // Send email
    await transporter.sendMail(mailOptions);
    
    res.status(200).json({ success: true, message: 'Password reset email sent successfully' });
  } catch (error) {
    console.error('Error sending email:', error);
    res.status(500).json({ error: 'Failed to send email', details: error.message });
  }
});

// Serve the frontend
app.get('/', (req, res) => {
  res.sendFile('index.html', { root: __dirname });
});

// Start server
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
  console.log(`Email server configured for: ${process.env.EMAIL_USER || 'extoll.co.in@gmail.com'}`);
}); 