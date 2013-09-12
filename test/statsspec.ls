'use strict'

# jasmine specs for qalib

describe "stats", (_) ->

  var stats
  var helpers

  beforeEach ->
    stats := window
    helpers := window


  describe "factorial", (_) ->


    it "should exist", ->
      expect stats.factorial? .toBe true

    it "should evaluate 0!", ->
      expect stats.factorial 0 .toEqual 1

    it "should evaluate 1!", ->
      expect stats.factorial 1 .toEqual 1

    it "should evaluate 5!", ->
      expect stats.factorial 5 .toEqual 120

    it "should throw on non integer", ->
      foo = -> stats.factorial 1.5
      expect foo .toThrow!

  describe "combi", (_) ->
    it "should evaluate 8C5", ->
      expect stats.combi 8 5 .toEqual 56

  describe "rPad", (_) ->
    it "++ * should be enough", ->
      expect 1234.toString!rPad(5,"0") .toBe "12340"
      expect 123.toString!rPad(6,"0") .toBe "123000"

  describe "stats.rPad", (_) ->
    it "should pad out to given length with given char", ->
      expect helpers.rPad(1234, 5, "0") .toBe "12340"
      expect helpers.rPad(123, 6, "0") .toBe "123000"