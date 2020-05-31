//Load visits and create relationships
load csv with headers from
"https://docs.google.com/spreadsheets/d/1R-XVuynPsOWcXSderLpq3DacZdk10PZ8v6FiYGTncIE/export?format=csv&id=1R-XVuynPsOWcXSderLpq3DacZdk10PZ8v6FiYGTncIE&gid=1261126668" as csv
match (p:Person {id:csv.PersonId}), (pl:Place {id:csv.PlaceId})
create (p)-[:PERFORMS_VISIT]->(v:Visit {id:csv.VisitId, starttime:datetime(csv.StartTime), endtime:datetime(csv.EndTime)})-[:LOCATED_AT]->(pl)
create (p)-[vi:VISITS {id:csv.VisitId, starttime:datetime(csv.StartTime), endtime:datetime(csv.EndTime)}]->(pl)
set v.duration=duration.inSeconds(v.starttime,v.endtime)
set vi.duration=duration.inSeconds(vi.starttime,vi.endtime);