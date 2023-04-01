%dw 2.0
var pl = vars.periods map ($.name): $.temperature ++ " | " ++ $.shortForecast
output application/json
---
//payload map (item, index) -> 
//    (item.name): item.temperature ++ " | " ++ item.shortForecast as String
//payload map ($.name): $.temperature
if ( vars.format == 'csv' ) [{
	"Coordinates": vars.foundCoordinates,
	(pl map ((item, index) -> {
		(item)
	})),
	"Alerts": (vars.alertResp..event[0] ++ " - " ++ vars.alertResp..description[0]) default "None"
}] else 
[{
	"coordinates": vars.foundCoordinates,
	(pl map ((item, index) -> {
		(item)
	})),
	"alerts": (vars.alertResp..event[0] ++ " - " ++ vars.alertResp..description[0]) default "None"
}]