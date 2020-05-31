//2. Set Algorithm Parameters
:param config => ({
  nodeProjection: 'Person',
  relationshipProjection: {
    relType: {
      type: 'MEETS',
      orientation: 'NATURAL',
      properties: {}
    }
  },
  relationshipWeightProperty: null,
  dampingFactor: 0.85,
  maxIterations: 20,
  writeProperty: 'pagerank'
})