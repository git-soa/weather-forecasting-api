%dw 2.0
output application/json
---
payload.properties.relativeLocation.geometry.coordinates[1] ++ "," ++ payload.properties.relativeLocation.geometry.coordinates[0]