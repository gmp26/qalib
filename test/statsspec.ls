'use strict'

# jasmine specs for qalib

describe "stats", (_) ->

  describe "factorial", (_) ->

    it "should exist", ->
      expect qa.factorial? .toBe true

    it "should evaluate", ->
      expect qa.factorial 5 .toEqual 120
