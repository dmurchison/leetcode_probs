# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    n1, n2 = nums1.size, nums2.size
    return find_median_sorted_arrays(nums2, nums1) if n1 > n2
    n = n1 + n2
    i, j = helper_function(nums1, nums2, (n + 1) / 2)
    nums = (nums1[i, 2] + nums2[j, 2]).sort
    (nums[0] + nums[1 - n % 2]) / 2.0
end

def helper_function(nums1, nums2, i)
    return [0, 0] if i == 1
    n1, n2 = nums1.length, nums2.length
    merged = i - 1
    m1 = [merged - n2, 0].max
    m2 = [n1, merged].min
    j = (m1..m2).bsearch do |k|
        k == n1 || merged-k-1 < 0 || nums2[merged-k-1] < nums1[k]
    end
    [j, merged - j]
end