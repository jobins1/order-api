%dw 2.0
output application/json
---
{
    "orderId": attributes.uriParams.orderId,
    "trackingNumber": "TRK" ++ (now() as String {format: "yyyyMMddHHmmss"}) ++ (randomInt(1000) as String),
    "status": "TRACKING_GENERATED",
    "carrier": "Standard Shipping",
    "estimatedDelivery": (now() + |P5D|) as String {format: "yyyy-MM-dd"},
    "generatedAt": now(),
    "trackingUrl": "https://tracking.example.com/track/" ++ "TRK" ++ (now() as String {format: "yyyyMMddHHmmss"}) ++ (randomInt(1000) as String)
}