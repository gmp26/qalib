'use strict';
describe("stats", function(_){
  var stats, helpers;
  beforeEach(function(){
    stats = window;
    return helpers = window;
  });
  describe("factorial", function(_){
    it("should exist", function(){
      return expect(stats.factorial != null).toBe(true);
    });
    it("should evaluate 0!", function(){
      return expect(stats.factorial(0)).toEqual(1);
    });
    it("should evaluate 1!", function(){
      return expect(stats.factorial(1)).toEqual(1);
    });
    it("should evaluate 5!", function(){
      return expect(stats.factorial(5)).toEqual(120);
    });
    return it("should throw on non integer", function(){
      var foo;
      foo = function(){
        return stats.factorial(1.5);
      };
      return expect(foo).toThrow();
    });
  });
  describe("combi", function(_){
    return it("should evaluate 8C5", function(){
      return expect(stats.combi(8, 5)).toEqual(56);
    });
  });
  describe("rPad", function(_){
    return it("++ * should be enough", function(){
      expect(1234 .toString().rPad(5, "0")).toBe("12340");
      return expect(123 .toString().rPad(6, "0")).toBe("123000");
    });
  });
  return describe("stats.rPad", function(_){
    return it("should pad out to given length with given char", function(){
      expect(helpers.rPad(1234, 5, "0")).toBe("12340");
      return expect(helpers.rPad(123, 6, "0")).toBe("123000");
    });
  });
});