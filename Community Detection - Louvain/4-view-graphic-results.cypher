//4. View Graphic results
match (p1:Person {louvain: 489})-[v:VISITS]->(pl:Place), (p1)-[m:MEETS]->(p2:Person)
return p1, p2, pl, v, m;