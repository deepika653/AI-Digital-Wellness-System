CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100)
);

CREATE TABLE usage_logs (
    log_id INT PRIMARY KEY,
    user_id INT,
    app_name VARCHAR(100),
    usage_minutes INT,
    usage_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE notifications (
    notification_id INT PRIMARY KEY,
    user_id INT,
    message VARCHAR(255),
    notification_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE risk_analysis (
    risk_id INT PRIMARY KEY,
    user_id INT,
    risk_level VARCHAR(20),
    score INT,
    analysis_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
