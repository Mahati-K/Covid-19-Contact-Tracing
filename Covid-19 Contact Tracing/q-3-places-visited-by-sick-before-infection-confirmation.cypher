//Q3. Places visited by sick before infection confirmation
match (p:Person {healthstatus:"Sick"})-[visited]->(pl:Place)
where p.confirmedtime < visited.starttime
return p, visited, pl
limit 10;