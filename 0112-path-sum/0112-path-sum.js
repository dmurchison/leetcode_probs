/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {TreeNode} root
 * @param {number} targetSum
 * @return {boolean}
 */
var hasPathSum = function(root, targetSum) {
    return checkTree(root, targetSum, 0);
    function checkTree(root, targetSum, sum) {
        if (!root) {
            return false;
        }
        sum += root.val;
        if (root.left === null && root.right === null) {
            return sum === targetSum;
        }
        return checkTree(root.left, targetSum, sum) || checkTree(root.right, targetSum, sum)
    };

};