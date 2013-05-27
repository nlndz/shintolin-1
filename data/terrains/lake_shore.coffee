time = require '../../time'

module.exports =
  id: 'lake_shore'
  style: 'rshore'

  buildable: ['tiny', 'small']

  describe: (tile) ->
    switch time().season
      when 'Spring'
        'You are on the rocky shore of a lake, sunlight glinting off the crests of small waves.'
      when 'Summer'
        'You are on the rocky shore of a lake. The placid surface reflects the almost cloudless blue sky.'
      when 'Autumn'
        'You are on the rocky shore of a lake. The water is grey and choppy.'
      when 'Winter'
        'You are on the rocky shore of a lake. The water is grey and choppy.'

  search_odds: (tile, character) ->
    stone: .25
