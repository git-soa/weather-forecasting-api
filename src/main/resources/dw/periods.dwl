%dw 2.0
var last24hr = now() + |PT36H|
output application/json
---
payload.properties.periods filter $.endTime < last24hr