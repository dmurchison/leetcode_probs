# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
    return nil if nums.empty?
    mid_index = (nums.length - 1) / 2
    
    root = TreeNode.new(nums[mid_index])
    root.left = sorted_array_to_bst(nums[0...mid_index])
    root.right = sorted_array_to_bst(nums[mid_index + 1..-1])
    
    root
end