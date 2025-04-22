# Extoll.Co - Premium Freelance Services

Welcome to Extoll.Co, your one-stop solution for premium freelance services. We offer a wide range of professional services including 2D Animation, 3D Modeling, Graphic Design, Logo Making, Content Creation, and Video Editing.

A responsive, dark-themed freelance services website built with HTML, CSS, and JavaScript.

## Features

- Modern, responsive dark theme design
- Interactive portfolio section with filtering
- Animated testimonial slider
- Contact form with validation
- Mobile-friendly navigation

## File Structure

```
extoll/
├── index.html
├── css/
│   └── style.css
├── js/
│   └── main.js
└── img/
    ├── hero-image.png
    ├── portfolio-1.jpg
    ├── portfolio-2.jpg
    └── ...
```

## Setup

1. Clone or download the repository
2. Open `index.html` in your browser to view the website
3. For development, you can use any code editor of your choice

## Image Placeholders

The website currently uses placeholder references for images. Before deploying, you should:

1. Add your own images to the `/img` directory
2. Update the image paths in the HTML

## Technologies Used

- HTML5
- CSS3 (with custom properties and flexbox/grid layouts)
- JavaScript (vanilla JS without frameworks)
- Font Awesome for icons

## License

This project is available for use under the MIT License.

# Extoll.Co Website

This is the codebase for the Extoll.Co website, featuring a fully functional password reset system with real email delivery.

## Setting Up Email Functionality

To enable real email sending for password reset functionality, follow these steps:

### Prerequisites

- Node.js (v14 or newer)
- npm (comes with Node.js)
- A Gmail account (or other email service)

### Setup Instructions

1. **Clone the repository**
   ```
   git clone https://github.com/your-username/extoll.co.in.git
   cd extoll.co.in
   ```

2. **Install dependencies**
   ```
   npm install
   ```

3. **Set up environment variables**
   - Copy the `.env.example` file to create a new `.env` file:
     ```
     cp .env.example .env
     ```
   - Edit the `.env` file with your email credentials:
     ```
     EMAIL_USER=your.email@gmail.com
     EMAIL_PASSWORD=your_app_password
     ```

4. **For Gmail users (recommended)**
   - You need to use an "App Password" instead of your regular password:
     1. Enable 2-Step Verification in your Google Account
     2. Go to https://myaccount.google.com/apppasswords
     3. Create a new app password for "Mail" and select "Other (Custom name)"
     4. Name it "Extoll Website" or something recognizable
     5. Copy the generated password and use it in your `.env` file

5. **Start the server**
   ```
   npm start
   ```
   The server will run on port 3000 by default (or another port if specified in your `.env` file).

6. **Test the functionality**
   - Open your browser and navigate to `http://localhost:3000`
   - Try the "Forgot Password" feature
   - You should receive a real email with a password reset link

## Security Considerations

- Never commit your `.env` file to version control
- In a production environment, use a secure email service
- Consider implementing rate limiting to prevent abuse
- Store password reset tokens securely (hashed) in a real database

## Customization

You can customize the email template in the `server.js` file under the `mailOptions` object. 