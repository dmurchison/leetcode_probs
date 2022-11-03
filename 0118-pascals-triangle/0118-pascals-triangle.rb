# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    (num_rows-1).times.inject([[1]]) { |r, i| r << ([1] + r.last[0...-1].zip(r.last[1..-1]).collect {|(a, b)| a+b} + [1]) }
end