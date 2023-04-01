%dw 2.0
import * from dw::core::Strings
output application/json
---
substring(payload.properties.forecastZone, 23 ,60)