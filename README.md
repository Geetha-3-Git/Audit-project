# AuditHub backend (Spring Boot + PostgreSQL + OneDrive)

Flow: OneDrive Excel -> Microsoft Graph -> Spring Boot (every 5 min) -> PostgreSQL -> /api -> React portal

## Run
1. Install Java 17+, Maven, PostgreSQL. Create a database:  `CREATE DATABASE auditdb;`
2. Copy `run.example.ps1` to `run.ps1`, fill in the values, run `.\run.ps1`
3. Check:  http://localhost:8080/api/sync/status   and   http://localhost:8080/api/faqs
4. After editing the Excel file you can force a sync:  POST http://localhost:8080/api/sync

## Endpoints
GET /api/faqs · GET /api/faqs/{id} · GET /api/scores · GET /api/sync/status · POST /api/sync

## Azure app (Application permission, admin consent required)
Microsoft Graph > Application permissions > Files.Read.All
Excel: sheet "FAQs" (Category, Question, Answer, Owner, Last Updated, Status, Control Reference, Next Review)
and optional sheet "Compliance" (Framework, Score).
Excel is the master data: rows removed from Excel are removed from the database.
