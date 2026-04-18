# Prelevement App - Medical Blood Sampling Management System

## Overview
The Prelevement App is a web-based blood sampling request management system designed for coordinating patient requests, admin management, and healthcare worker task execution in Djibouti.

## Key Features
- 📋 **Patient Forms**: Submit blood sampling requests with personal information
- 👨‍💼 **Admin Dashboard**: Manage and assign requests to healthcare workers
- 🏥 **Healthcare Worker Portal**: Track and complete assigned tasks
- 💳 **Payment Integration**: Support for Dmoney, Waafi, and CacPay
- 📱 **Real-time Notifications**: Instant updates on request status
- 📊 **Request History**: Complete tracking of all blood sampling requests
- 🔐 **Phone-based Authentication**: Login with phone number

## Technology Stack
- **Frontend**: HTML5, CSS3, Vanilla JavaScript
- **Backend**: Node.js + Express.js
- **Database**: SQLite
- **Payment Gateway**: Integration with Djibouti payment systems

## Project Structure
```
prelevement-app/
├── backend/
│   ├── server.js
│   ├── package.json
│   └── routes/
├── frontend/
│   ├── index.html
│   ├── css/
│   │   └── style.css
│   └── js/
│       └── app.js
├── database/
│   └── schema.sql
├── .gitignore
└── README.md
```

## Getting Started
1. Clone the repository
2. Set up backend: `cd backend && npm install`
3. Set up database: Run `database/schema.sql`
4. Start the server: `npm start`
5. Open `frontend/index.html` in your browser

## Team
- Developer: Houmed Mahamoud Mohamed (hachtek98-stack)
- Location: Djibouti
