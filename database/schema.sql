-- SQLite Database Schema

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    phone TEXT NOT NULL,
    password TEXT NOT NULL,
    role TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE patients (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    full_name TEXT NOT NULL,
    address TEXT NOT NULL,
    age INTEGER NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE requests (
    id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    soignant_id INTEGER,
    admin_id INTEGER,
    status TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    completed_at DATETIME,
    FOREIGN KEY(patient_id) REFERENCES patients(id),
    FOREIGN KEY(soignant_id) REFERENCES users(id),
    FOREIGN KEY(admin_id) REFERENCES users(id)
);

CREATE TABLE payments (
    id INTEGER PRIMARY KEY,
    request_id INTEGER,
    amount REAL NOT NULL,
    method TEXT NOT NULL,
    status TEXT NOT NULL,
    FOREIGN KEY(request_id) REFERENCES requests(id)
);

CREATE TABLE history (
    id INTEGER PRIMARY KEY,
    request_id INTEGER,
    action TEXT NOT NULL,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(request_id) REFERENCES requests(id)
);