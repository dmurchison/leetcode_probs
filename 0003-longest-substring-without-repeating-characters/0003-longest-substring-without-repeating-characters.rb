# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    front, back, len, max_len = 0, 0, 0, 0
    
    while back < s.size
        len = back + 1 - front

        max_len = [len, max_len].max
        return max_len if s.size - front <= max_len

        if s[front..back].include?(s[back + 1])
            front += 1
            back += 1 if back < front
        else
            back += 1
        end
    end
    
    max_len
end