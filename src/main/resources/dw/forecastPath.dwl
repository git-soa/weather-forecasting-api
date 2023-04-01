%dw 2.0
import * from dw::core::Strings
output application/json
---
substring(payload.properties.forecast, 23 ,60)