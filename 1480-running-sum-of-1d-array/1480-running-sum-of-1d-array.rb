# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    i = 0
    nums.map { |el| i += el }
end