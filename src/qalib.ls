module.exports = (qalib) ->
  require 'seedrandom'
  (require './helpers') (qalib) 
  (require './config') (qalib)
  return qalib