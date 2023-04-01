%dw 2.0
output application/java
---
(payload.properties.forecastZone splitBy "/")[5]