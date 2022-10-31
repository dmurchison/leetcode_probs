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
# @return {Integer}
def max_depth(root)
  max_level = Array.new(1, 0)
  dfs(root, 1, max_level)
  max_level[0]
end

def dfs(root, curr_level, max_level)
  return if root.nil?

  max_level[0] = curr_level if curr_level > max_level[0]

  dfs(root.left, curr_level + 1, max_level)
  dfs(root.right, curr_level + 1, max_level)
end