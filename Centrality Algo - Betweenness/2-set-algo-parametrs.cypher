//2. Set Algo Parametrs
:param config => ({
nodeProjection: 'Person',
relationshipProjection: {
relType: {
type: 'MEETS',
orientation: 'NATURAL',
properties: {}
}
},
writeProperty: 'betweenness'
})