//Meets Relationship
match (p1:Person)-[v1:VISITS]->(pl:Place)<-[v2:VISITS]-(p2:Person)
where id(p1)<id(p2)
with p1, p2, apoc.coll.max([v1.starttime.epochMillis, v2.starttime.epochMillis]) as maxStart,
apoc.coll.min([v1.endtime.epochMillis, v2.endtime.epochMillis]) as minEnd
where maxStart <= minEnd
with p1, p2, sum(minEnd-maxStart) as meetTime
create (p1)-[:MEETS {meettime: duration({seconds: meetTime/1000})}]->(p2);