'use strict';
describe("helpers", function(_){
  var helpers;
  beforeEach(function(){
    helpers = window;
    return this.addMatchers({
      closeTo: function(expected){
        return Math.abs(this.actual - expected) < 1e-6;
      }
    });
  });
  describe("repeat", function(_){
    it("should repeat its first string arg n times", function(){
      expect(helpers.repeat(4, "ab")).toBe("abababab");
      return expect(helpers.repeat(3, "")).toBe("");
    });
    return it("should curry the repeat count", function(){
      var r5;
      r5 = helpers.repeat(5);
      return expect(r5("a")).toBe("aaaaa");
    });
  });
  describe("rPad", function(_){
    return it("should pad out to given length with given char", function(){
      expect(helpers.rPad(1234, 5, "0")).toBe("12340");
      return expect(helpers.rPad(123, 6, "0")).toBe("123000");
    });
  });
  describe("gcd", function(_){
    return it("should make gcd 18,45 be 9", function(){
      return expect(helpers.gcd(18, 45)).toBe(9);
    });
  });
  describe("lcm", function(_){
    return it("should make lcm 18,45 be 180", function(){
      return expect(helpers.lcm(18, 45)).toBe(90);
    });
  });
  describe("lincombination", function(_){
    return it("should make lincombination 18, 45 be ", function(){
      var x;
      x = helpers.lincombination(18, 45);
      expect(x[0]).toBe(-2);
      return expect(x[1]).toBe(1);
    });
  });
  describe("sinpi", function(_){
    var spi;
    beforeEach(function(){
      return spi = function(a, b){
        var s;
        s = helpers.sinpi(a, b);
        return s[0] / s[1] + s[2] * Math.sqrt(2) / s[3] + s[4] * Math.sqrt(3) / s[5];
      };
    });
    return it("should make sinpi 1,2 be 1", function(){
      expect(spi(1, 2)).closeTo(1);
      expect(spi(1, 4)).closeTo(1 / Math.sqrt(2));
      return expect(spi(2, 3)).closeTo(Math.sqrt(3) / 2);
    });
  });
  return describe("rand", function(_){
    var inRange;
    beforeEach(function(){
      return inRange = function(n, a, b){
        return n >= a && n <= b;
      };
    });
    return it("should make an inRange random number", function(){
      expect(inRange(helpers.rand(-5, -4), -5, -4)).toBe(true);
      expect(inRange(helpers.rand(-5, 4), -5, 4)).toBe(true);
      return expect(inRange(helpers.rand(0, 1), 0, 1)).toBe(true);
    });
  });
});