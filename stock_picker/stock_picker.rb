def stock_picker(array)

    # Check if array has enough content
    if array.empty? || prices.length < 2
        puts "Not enough data for stock trading."
        return []
    end

    # Keep tracker of best investment move
    buy_location = 0
    sell_location = 0
    result = 0

    array.each_with_index do |first, first_index|
        array.each_with_index do |second, second_index|
            
            # Set selling to the right location
            if first_index >= second_index
                next
            end

            # Compare first and second and keep the best one
            if (second - first) > result
                buy_location = first_index
                sell_location = second_index
                result = second - first
            end
        end
    end
    puts "for a profit of $#{array[sell_location]} - $#{array[buy_location]} == $#{result}"
    return [buy_location, sell_location]
end

stock_picker([17,3,6,9,15,8,6,1,10])
