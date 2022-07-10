const { longestPalindromicSubstringLength } = require("../app");

test('it returns longest palindromic substring length', () => {
    expect(longestPalindromicSubstringLength("aacaa")).toBe(5);
    expect(longestPalindromicSubstringLength("xyz")).toBe(1);
    expect(longestPalindromicSubstringLength("abba")).toBe(4);
    expect(longestPalindromicSubstringLength("i")).toBe(1);
});
