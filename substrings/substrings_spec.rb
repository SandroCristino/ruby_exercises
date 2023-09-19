require 'rspec'
require_relative 'substrings'

describe 'Substrings Exercises' do
    describe 'correct paramter test' do

        it 'should print correct usage' do

            output = StringIO.new
            $stdout = output

            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            substrings(2, dictionary)

            $stdout = STDOUT
            captured_output = output.string.strip
    
            expect(captured_output).to include('Correct using -> substrings(strings, dictionary)')
        end
    end

    describe 'test general output' do
        dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

        it 'should print hash with substrings' do
            expect(substrings("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
        end

        it 'should print hash with substrings' do
            expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
        end
    end

end