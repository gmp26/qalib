module.exports = (qalib) ->
  require 'seedrandom'
  # (require './complex') (qalib)
  # (require './fpolys') (qalib)
  # (require './fractions') (qalib)
  # (require './geometry') (qalib)
  # (require './guessExact') (qalib)
  # (require './polys') (qalib)
  (require './helpers') (qalib) 
  # (require './stats') (qalib)
  # (require './problems') (qalib) 
  (require './manifest') (qalib)
  return qalib