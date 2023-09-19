require 'rspec'
require_relative 'caesar_cipher'

describe 'Text Cipher' do
    describe 'put wrong parameter' do

        it 'return a error' do

            output = StringIO.new
            $stdout = output

            caesar_cipher(2,2)

            # Restore STDOUT
            $stdout = STDOUT

            # Get the captured output
            captured_output = output.string.strip

            # Make an assertion that the captured output contains the expected error message
            expect(captured_output).to include('Correct using -> casear_cipher(String, Number)')
        end
    end

    describe 'test different text and keys' do
        it 'return correct text' do
            output = StringIO.new
            $stdout = output

            caesar_cipher('Morning', 2)

            $stdout = STDOUT
            captured_output = output.string.strip
            expect(captured_output).to include('Oqtpkpi')
        end

        it 'return correct text' do
            expect(caesar_cipher('A', 2)).to eq('C')
        end

        it 'return correct text' do
            expect(caesar_cipher('Zero water', 10)).to eq('Joby gkdob')
        end
    end

end
