# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    profit = 0
    min = prices.shift
    
    prices.each do |p|
        if p < min
            min = p
        elsif p - min > profit
            profit = p - min
        end
    end
    
  profit
end