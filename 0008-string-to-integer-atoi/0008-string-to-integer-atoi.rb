# @param {String} s
# @return {Integer}
def my_atoi(s)
    i = s.scan(/^[-+\s]*\d+/).first.to_i
    i >= 0 ? [2147483647, i].min : [-2147483648, i].max
end