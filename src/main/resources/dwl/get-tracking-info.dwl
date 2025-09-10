%dw 2.0
output application/json
---
{
    "trackingNumber": attributes.uriParams.trackingNumber,
    "status": "IN_TRANSIT",
    "carrier": "Standard Shipping",
    "currentLocation": "Distribution Center",
    "estimatedDelivery": (now() + |P3D|) as String {format: "yyyy-MM-dd"},
    "lastUpdated": now(),
    "trackingHistory": [
        {
            "status": "PICKED_UP",
            "location": "Origin Facility",
            "timestamp": (now() - |P2D|),
            "description": "Package picked up from sender"
        },
        {
            "status": "IN_TRANSIT",
            "location": "Distribution Center",
            "timestamp": (now() - |P1D|),
            "description": "Package in transit to destination"
        },
        {
            "status": "OUT_FOR_DELIVERY",
            "location": "Local Facility",
            "timestamp": now(),
            "description": "Package out for delivery"
        }
    ],
    "deliveryAddress": {
        "street": "123 Main St",
        "city": "Anytown",
        "state": "ST",
        "zipCode": "12345",
        "country": "USA"
    }
}