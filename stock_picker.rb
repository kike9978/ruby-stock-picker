require "pry-byebug"

def stock_picker(stock_prices) 
  best_days = [stock_prices[0],0]
  stock_prices.each do |num| 

    if num <= best_days[0] && best_days[1] <= best_days[0]
      best_days[0] = num
    end

    # binding.pry
    if num > best_days[0] && best_days[1] < num
      best_days[1] = num
    end



  end
  best_days

end

stock_prices = [17,3,6,9,15,8,6,1,10]
print stock_picker(stock_prices)