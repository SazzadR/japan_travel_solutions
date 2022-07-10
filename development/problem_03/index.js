const readline = require('readline');
const { longestPalindromicSubstringLength } = require('./app');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Input string: ', function (string) {
    console.log(`Longest palindromic substring of "${string}" is: ${longestPalindromicSubstringLength(string)}`);
    rl.close();
});

rl.on("close", function () {
    process.exit(0);
});
