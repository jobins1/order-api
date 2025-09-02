%dw 2.0
output application/json
---
{
    "valid": payload.customerId? and payload.items? and sizeOf(payload.items) > 0
}