require "pry-byebug"

def stock_picker(stock_prices) 
  best_days = []
  lesser_number = stock_prices.reduce do |sum, current| 
    sum = current <= sum ? current : sum 
  end
  higher_number = stock_prices.reduce do |sum, current| 
    sum = current >= sum ? current : sum 
  end
  best_days.push(lesser_number,higher_number)
  best_days

end

stock_prices = [17,3,6,9,15,8,6,1,10]
print stock_picker(stock_prices)