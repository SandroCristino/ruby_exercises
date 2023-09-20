require 'rspec'
require_relative 'bubble_sort'

describe 'Bubble Sort Exercises' do
    describe 'test general output' do

        it 'it should return an sorted array' do
            expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
        end
    end
end
