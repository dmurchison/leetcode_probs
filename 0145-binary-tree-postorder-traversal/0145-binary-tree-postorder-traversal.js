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
 * @return {number[]}
 */
var postorderTraversal = function(root) {
    if (!root) return [];
    var res = [];
    var stack = [];
    var node = root;
    while (node || stack.length) {
        if (node) {
            stack.push(node);
            res.unshift(node.val);
            node = node.right;
        } else {
            node = stack.pop();
            node = node.left;
        }
    }
    return res;
};