'use strict'

# jasmine specs for qalib

describe "helpers", (_) ->

  var helpers

  beforeEach ->
    helpers := window
    @addMatchers do
      closeTo: (expected) ->
        Math.abs(@actual - expected) < 1e-6

  describe "repeat", (_) ->
    it "should repeat its first string arg n times", ->
      expect helpers.repeat 4 "ab" .toBe "abababab"
      expect helpers.repeat 3 "" .toBe ""

    it "should curry the repeat count", ->
      r5 = helpers.repeat 5
      expect r5 "a" .toBe "aaaaa"

  describe "rPad", (_) ->
    it "should pad out to given length with given char", ->
      expect helpers.rPad(1234, 5, "0") .toBe "12340"
      expect helpers.rPad(123, 6, "0") .toBe "123000"

  describe "gcd", (_) ->
    it "should make gcd 18,45 be 9", ->
      expect helpers.gcd 18 45 .toBe 9

  describe "lcm", (_) ->
    it "should make lcm 18,45 be 180", ->
      expect helpers.lcm 18 45 .toBe 90

  describe "lincombination", (_) ->
    it "should make lincombination 18, 45 be ", ->
      x = helpers.lincombination 18 45
      expect x.0 .toBe -2
      expect x.1 .toBe 1

  describe "sinpi", (_) ->

    var spi
    beforeEach ->
      spi := (a,b) ->
        s = helpers.sinpi a, b
        s.0/s.1 + s.2 * Math.sqrt(2)/s.3 + s.4 * Math.sqrt(3)/s.5
      
    it "should make sinpi 1,2 be 1", ->
      expect spi 1 2 .closeTo 1
      expect spi 1 4 .closeTo 1/Math.sqrt(2)
      expect spi 2 3 .closeTo Math.sqrt(3)/2

  describe "rand", (_) ->
    var inRange

    beforeEach ->
      inRange := (n, a,b) ->
        n >= a && n <= b

    it "should make an inRange random number", ->
      expect inRange(helpers.rand(-5, -4), -5, -4) .toBe true
      expect inRange(helpers.rand(-5, 4), -5, 4) .toBe true
      expect inRange(helpers.rand(0, 1), 0, 1) .toBe true

