# @param {String[]} strs
# @return {String}

# Iterate through the array

def longest_common_prefix(strs)
    s = ""
    strs.shift.split("").each_with_index do |i, j|
        if strs.all? { |x| x[j] == i }
            s << i
        else
            return s
        end
    end
    s
end
