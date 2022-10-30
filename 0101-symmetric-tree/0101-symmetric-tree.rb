# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
    return true if root.nil?
    is_mirror(root.left, root.right)
end

def is_mirror(a, b)
    return a == b if a.nil? || b.nil?
    return false  if a.val != b.val
    is_mirror(a.left, b.right) && is_mirror(a.right, b.left)
end