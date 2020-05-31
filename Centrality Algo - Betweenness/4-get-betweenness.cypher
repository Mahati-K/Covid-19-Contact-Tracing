//4. Get Betweenness
MATCH (node)
WHERE not(node[$config.writeProperty] is null)
RETURN node.name as name, node[$config.writeProperty] AS betweenness
ORDER BY betweenness DESC
LIMIT 10;