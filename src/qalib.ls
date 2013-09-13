module.exports = (qa) -> 
  # (require './complex') (qa)
  # (require './fpolys') (qa)
  # (require './fractions') (qa)
  # (require './geometry') (qa)
  # (require './guessExact') (qa)
  # (require './polys') (qa)
  # (require './helpers') (qa) 
  # (require './stats') (qa)
  # (require './problems') (qa) 
  (require './manifest') (qa)
  qa.name = 'foo'
  return qa