# @param {String} s
# @return {String}
def longest_palindrome(s)
    i = 0  
    max_si, max_ei, max_len = nil, nil, 0  
    while i <= s.length - 1 do  
        len, si, ei = expand(s, i)  
        if max_len < len  
            max_si, max_ei, max_len = si, ei, len  
        end  
        i += 0.5  
    end  
    s[max_si..max_ei]
end

def expand(s, center)  
    li, ri = center.floor, center.ceil  
    if li == ri  
        li -= 1  
        ri += 1  
    end  
    left_space = li  
    right_space = s.length - ri - 1  
    max_space = [left_space, right_space].min  
    most_left = li - max_space  
    while li >= most_left do  
        if s[li] == s[ri]  
            li -= 1  
            ri += 1  
        else  
        break  
        end  
    end  
    [ri - li - 1, li + 1, ri - 1]  
end  