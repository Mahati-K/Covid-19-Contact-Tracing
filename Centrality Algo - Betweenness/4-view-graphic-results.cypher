//4. View graphic results
MATCH (node)
WHERE not(node[$config.writeProperty] is null)
with node, node[$config.writeProperty] AS score
ORDER BY score DESC
LIMIT 10
MATCH (node)-[r]-(conn)
RETURN node, r, conn;