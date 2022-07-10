const longestPalindromicSubstringLength = (string) => {
    if (!string || string.length <= 1) {
        return 1;
    }

    let longest = string.substring(0, 1);

    for (let i = 0; i < string.length; i++) {
        let temp = expand(string, i, i);  // Odd numbered pelindrome
        if (temp.length > longest.length) {
            longest = temp;
        }

        temp = expand(string, i, i + 1);  // Even numbered pelindrome
        if(temp.length > longest.length) {
            longest = temp;
        }
    }

    return longest.length;
};

const expand = (string, begin, end) => {
    while(begin >= 0 && end <= string.length - 1 && string[begin] === string[end]) {
        begin--
        end++
    }

    return string.substring(begin + 1, end)
};

module.exports = {
    longestPalindromicSubstringLength: longestPalindromicSubstringLength,
};
