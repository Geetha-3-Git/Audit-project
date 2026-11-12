# Copy to run.ps1, fill in your values, then run:  .\run.ps1
# Do NOT commit run.ps1 or share the client secret.
$env:AZURE_TENANT_ID     = "<tenant id>"
$env:AZURE_CLIENT_ID     = "<client id>"
$env:AZURE_CLIENT_SECRET = "<client secret VALUE>"
$env:ONEDRIVE_USER       = "you@yourcompany.com"
$env:ONEDRIVE_PATH       = "AuditHub/faqs.xlsx"
$env:DB_NAME             = "auditdb"
$env:DB_USER             = "postgres"
$env:DB_PASSWORD         = "<postgres password>"
mvn spring-boot:run
