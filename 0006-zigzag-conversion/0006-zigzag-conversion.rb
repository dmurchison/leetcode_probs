# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    return s if num_rows == 1
    n = s.size
    recurring_length = num_rows + (num_rows - 2)
    rows = (0...n).reduce(Hash.new{|h, k| h[k] = [] }) do |acc, i|
        x = i % recurring_length
        
        if x < num_rows
            row = x
        else
            row = recurring_length - x
        end
        
        acc[row] << i
        acc
    end
    
    rows.transform_values!(&:flatten).values.flatten.map { |i| s[i] }.join
end