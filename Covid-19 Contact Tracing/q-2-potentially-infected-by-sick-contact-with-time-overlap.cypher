//Q2. Potentially infected by sick contact with time overlap
match (p:Person {healthstatus:"Sick"})-[v1:VISITS]->(pl:Place)
with p,v1,pl
limit 10
match path = (p)-[v1]->(pl)<-[v2:VISITS]-(p2:Person {healthstatus:"Healthy"})
with path, apoc.coll.max([v1.starttime.epochMillis, v2.starttime.epochMillis]) as maxStart,
apoc.coll.min([v1.endtime.epochMillis, v2.endtime.epochMillis]) as minEnd
where maxStart <= minEnd
return path;