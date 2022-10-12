# @param {String} s
# @return {Integer}
def roman_to_int(s)
    hash = { I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000 }
    sum = 0
    (0...s.size).each do |i|
        if s[i] == 'I' && (s[i+1] == 'V' || s[i+1] == 'X')
            sum -= 1
        elsif s[i] == 'X' && (s[i+1] == 'L' || s[i+1] == 'C')
            sum -= 10
        elsif s[i] == 'C' && (s[i+1] == 'D' || s[i+1] == 'M')
            sum -= 100
        else
            sum += hash[s[i].to_sym]
        end
    end
  sum
end

