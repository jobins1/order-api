%dw 2.0
output application/json
---
{
    "orderId": uuid(),
    "customerId": payload.customerId,
    "items": payload.items,
    "totalAmount": sum(payload.items map (item) -> (item.price * item.quantity)),
    "status": "PENDING",
    "createdAt": now()
}