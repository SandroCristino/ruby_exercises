require 'rspec'
require_relative 'stock_picker'

describe 'Stock Picker Exercises' do
    describe 'test general output' do

        it 'it should return an array' do
            expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
        end
    end
end
