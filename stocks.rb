#frozen_string_literal: true

require 'pry'

def stock_calculation(stocks)
    current_profit = 0
    buy_day = 1
    sell_day = 0
    for i in 0...stocks.length do
      for j in i...stocks.length do
        if stocks[j] - stocks[i] > current_profit
            buy_day = i
            sell_day = j
            current_profit = stocks[j] - stocks[i]
        end
      end
    end
    puts "buy day: ", buy_day, " sell day: ", sell_day, " profit: ", current_profit
end

stock_picker = [17, 3, 6, 9, 15, 8, 6, 1, 10]

stock_calculation(stock_picker)