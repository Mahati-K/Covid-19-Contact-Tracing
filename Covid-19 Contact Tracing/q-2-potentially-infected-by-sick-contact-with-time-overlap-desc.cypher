//Q2. Potentially infected by sick contact with time overlap desc
match (hp:Person {healthstatus:"Healthy"})-[v1:VISITS]->(pl:Place)<-[v2:VISITS]-(sp:Person {healthstatus:"Sick"})
with hp, apoc.coll.max([v1.starttime.epochMillis, v2.starttime.epochMillis]) as maxStart,
apoc.coll.min([v1.endtime.epochMillis, v2.endtime.epochMillis]) as minEnd
where maxStart <= minEnd
return hp.name, hp.healthstatus, sum(minEnd-maxStart) as overlaptime
order by overlaptime desc;