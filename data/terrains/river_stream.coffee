_ = require 'underscore'
time = require '../../time'
define_loot_table = require '../../queries/loot_table_define'

module.exports =
  style: 'river'
  block_spawning: true
  no_season: true

  tags: ['freshwater', 'shallow']
  actions: ['fill']

  describe: (tile) ->
    switch time().season
      when 'Spring'
        'You are wading through a small stream, cool water running over your feet.'
      when 'Summer'
        'You are paddling through a small stream. The water is slow and murky.'
      when 'Autumn'
        'You are wading through a small stream, cool water running over your feet.'
      when 'Winter'
        'You are wading through a small stream. The water is ice cold and rapid.'

  search_odds: (character, tile) ->
    define_loot_table character, tile,
      items:
        gold_nugget: .01

  cost_to_enter: (character, tile_from, tile_to) ->
    if _.contains character.skills, 'swimming'
      1
    else
      3
