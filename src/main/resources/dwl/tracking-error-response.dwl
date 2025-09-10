%dw 2.0
output application/json
---
{
    "status": "error",
    "message": "Invalid order ID. Order ID is required to generate tracking number.",
    "timestamp": now()
}