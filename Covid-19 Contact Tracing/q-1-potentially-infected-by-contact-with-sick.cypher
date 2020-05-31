//Q1.Potentially Infected by contact with sick
match (p:Person {healthstatus:"Sick"})
with p
limit 1
match (p)--(v1:Visit)--(pl:Place)--(v2:Visit)--(p2:Person {healthstatus:"Healthy"})
return p.name as Spreader, v1.starttime as SpreaderStarttime, v2.endtime as SpreaderEndtime, pl.name as PlaceVisited, p2.name as Target, v2.starttime as TargetStarttime, v2.endtime as TargetEndttime;