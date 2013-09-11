'use strict';
describe("stats", function(_){
  return describe("factorial", function(_){
    it("should exist", function(){
      return expect(qa.factorial != null).toBe(true);
    });
    return it("should evaluate", function(){
      return expect(qa.factorial(5)).toEqual(120);
    });
  });
});