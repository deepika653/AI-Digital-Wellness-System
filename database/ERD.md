# ER Diagram

## Entities

### User

* user_id (PK)
* name
* email
* password

### Usage_Log

* log_id (PK)
* user_id (FK)
* app_name
* usage_minutes
* usage_date

### Notification

* notification_id (PK)
* user_id (FK)
* message
* notification_date

### Risk_Analysis

* risk_id (PK)
* user_id (FK)
* risk_level
* score
* analysis_date

## Relationships

User (1) -------- (M) Usage_Log

User (1) -------- (M) Notification

User (1) -------- (M) Risk_Analysis
