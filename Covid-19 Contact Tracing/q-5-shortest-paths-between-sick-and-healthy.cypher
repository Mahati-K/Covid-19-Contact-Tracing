//Q5. Shortest Paths between Sick and Healthy
MATCH (p1:Person {healthstatus:"Healthy"}), (p2:Person {healthstatus:"Sick"}),
path = allshortestpaths ((p1)-[*]-(p2))
RETURN path
limit 10;