%dw 2.0
output application/json
---
{
    "status": "error",
    "message": "Invalid order request. Required fields: customerId and at least one item.",
    "timestamp": now()
}