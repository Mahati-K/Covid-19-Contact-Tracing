//Load Place
load csv with headers from
"https://docs.google.com/spreadsheets/u/0/d/1R-XVuynPsOWcXSderLpq3DacZdk10PZ8v6FiYGTncIE/export?format=csv&id=1R-XVuynPsOWcXSderLpq3DacZdk10PZ8v6FiYGTncIE&gid=205425553" as csv
create (p:Place {id: csv.PlaceId, name:csv.PlaceName, type:csv.PlaceType, location:point({x: toFloat(csv.Lat), y: toFloat(csv.Long)})});