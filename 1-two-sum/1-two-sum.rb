# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |el, i|
        diff = target - el
        if hash[diff]
            return [hash[diff], i]
        else
            hash[el] = i
        end
    end
end