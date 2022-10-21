# @param {Integer} x
# @return {Integer}
def reverse(x)
    neg = x < 0
    x = x.to_s.reverse.to_i
    return  0 if (x > 2147483646 || x < -2147483647)
    return neg ? -x : x
end