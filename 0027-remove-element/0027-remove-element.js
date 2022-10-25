/**
 * @param {number[]} nums
 * @param {number} val
 * @return {number}
 */

var removeElement = function(nums, val) {
    // Iterate backwards over nums
    for (let i = nums.length - 1; i >= 0; i--) {
        // remove nums that equal val
        if (nums[i] === val) {
            nums.splice(i, 1)
        }
    }
    return nums.length
};
