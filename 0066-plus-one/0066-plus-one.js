/**
 * @param {number[]} digits
 * @return {number[]}
 */
var plusOne = function(digits) {
    let str = digits.join("");
    let count = BigInt(str) + BigInt(1);
    sNumber = count.toString();
    while(digits.length>0) {
        digits.pop();
    }
    for (var i = 0, len = sNumber.length; i < len; i += 1) {
        digits.push(+sNumber.charAt(i));
    }
    return digits;
};
