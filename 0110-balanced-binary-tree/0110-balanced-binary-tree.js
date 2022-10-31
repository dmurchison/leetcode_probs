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
 * @return {boolean}
 */

const ckeckHeight = node => {
    if (node === null) return 0;
    const left = ckeckHeight(node.left);
    const right = ckeckHeight(node.right);
    if (
        left === false ||
        right === false ||
        Math.abs(left - right) > 1
    ) {
        return false;
    }
    return Math.max(left, right) + 1;
};

var isBalanced = function(root) {
    if (root === null) return true;
  
    return ckeckHeight(root) !== false;
};