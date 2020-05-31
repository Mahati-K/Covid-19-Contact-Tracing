// 4. Get Louvain Communities
//4. Get Louvian Communities
match (p:Person)
return distinct p.louvain, count(p)
order by count(p) desc;