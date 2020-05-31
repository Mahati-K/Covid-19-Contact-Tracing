//2. Set Algo Properties
:param config => ({
nodeProjection: 'Person',
relationshipProjection: {
relType: {
type: 'MEETS',
orientation: 'NATURAL',
properties: {
meettimeinseconds: {
property: 'meettimeinseconds',
defaultValue: 1
}
}
}
},
relationshipWeightProperty: 'meettimeinseconds',
includeIntermediateCommunities: false,
seedProperty: '',
writeProperty: 'louvain'
})