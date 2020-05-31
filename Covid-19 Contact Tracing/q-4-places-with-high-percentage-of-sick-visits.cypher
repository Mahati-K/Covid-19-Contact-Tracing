//Q4. Places with high percentage of sick visits
match (p:Person {healthstatus:"Sick"})-[v:VISITS]->(pl:Place)
with distinct pl.name as placename, count(v) as nrofsickvisits, apoc.node.degree.in(pl,'VISITS') as totalnrofvisits
order by nrofsickvisits desc
limit 10
return placename, nrofsickvisits, totalnrofvisits, round(toFloat(nrofsickvisits)/toFloat(totalnrofvisits)*100) as percentageofsickvisits;