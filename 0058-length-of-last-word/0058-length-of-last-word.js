/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLastWord = function(s) {
    // Create an array of the words and trim out the empty spaces.
    const words = s.trim().split(" ");
    
    // Check if the array still has any words in it, if so return the length of the last one. Otherwise, return 0.
    return words.length > 0 ? words[words.length - 1].length : 0;
};
