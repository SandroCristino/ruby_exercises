def bubble_sort(array)

    # Loop until array doesn's swap
    loop do
        swapped = false

        (array.length - 1).times do |i|
            if array[i] > array [i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                swapped = true
            end
        end

        break unless swapped
    end

    # Return array
    array
end


