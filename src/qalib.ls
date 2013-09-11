# require 'complex'
# require 'fpolys'
# require 'fractions'
# require 'geometry'
# require 'guessExact'
# require 'helpers'
# require 'polys'
# require 'qalib'

(window ? exports).qa = (require './stats') {}

console.log "qa = #{qa}"
for own k,v of qa
  console.log "#k : #v"

# require 'problems'
