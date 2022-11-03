# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    return [] if row_index < 0
    
    res = [1]
    row_index.times do 
        (1..(res.size - 1)).to_a.reverse_each {|n| res[n] += res[n - 1]} if res.size > 1
        res.push(1)
    end
    
    res
end