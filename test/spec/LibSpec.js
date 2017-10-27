"use strict";
describe("blacklist extension", function() {

  describe("the blacklist regular expression", function() {

    it("should trigger on 01amour.com", function() {
      expect(BLACKLIST.test("01amour.com")).toBe(true);
      expect(BLACKLIST.test("http://01amour.com")).toBe(true);
      expect(BLACKLIST.test("https://01amour.com")).toBe(true);
    });

    it("should trigger on 01amour.com subdomains", function() {
      expect(BLACKLIST.test("www.01amour.com")).toBe(true);
      expect(BLACKLIST.test("http://sub.01amour.com")).toBe(true);
    });

    it("should not trigger on amour.com", function() {
      expect(BLACKLIST.test("amour.com")).toBe(false);
      expect(BLACKLIST.test("https://amour.com")).toBe(false);
    });

    it("should not trigger on google.com", function() {
      expect(BLACKLIST.test("google.com")).toBe(false);
      expect(BLACKLIST.test("https://google.com")).toBe(false);
      expect(BLACKLIST.test("https://encrypted.google.com")).toBe(false);
      expect(BLACKLIST.test("https://www.google.de/_/chrome/")).toBe(false);
    });
  });
});
