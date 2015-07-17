MAX_OCCUPANCY = 2

module.exports =
  name: 'Hut'
  size: 'tiny'
  hp: 30
  interior: '_interior_hut'
  actions: ['write']
  max_occupancy: MAX_OCCUPANCY

  recovery: (character, tile) ->
    if tile.z is 1 and tile.people?.length <= MAX_OCCUPANCY
      .5
    else
      0

  build: (character, tile) ->
    takes:
      ap: 40
      skill: 'construction'
      items:
        stick: 20
        staff: 5
    gives:
      xp:
        crafter: 25

  repair: (character, tile) ->
    max = @hp_max ? @hp
    return null unless tile.hp < max
    takes:
      ap: 4
      items:
        stick: 2
    gives:
      tile_hp: 3
      xp:
        crafter: 3

  text:
    built: 'Planting the tall staves in the ground, you weave in the sticks to build a crude wooden hut.'
