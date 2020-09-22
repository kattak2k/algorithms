NUM_TO_NUM = [
    "",
    "       ||",
    "  |___ | ",
    "   ___ ||",
    " |  _  ||",
    " | ___  |",
    " ||___  |",
    "   _   ||",
    " ||___ ||",
    " | ___ ||"
  ].freeze

  # Very important!
class BankOcr
    def initialize(text)
      @text = text
    end
  
    def account_number
      @text.split("\n")
           .map(&:chars)
           .transpose
           .map(&:join)
           .each_slice(3)
           .map(&:join)
           .map { |a| NUM_TO_NUM.index(a) }.join
    rescue StandardError
      raise "The account number could not be parsed"
    end
  end


=being 

  require "bank_ocr"


  describe BankOcr do
    describe 'parsing tests' do
      it 'parses an account number' do
        num = "    _  _     _  _  _  _  _ \n" +
              "  | _| _||_||_ |_   ||_||_|\n" +
              "  ||_  _|  | _||_|  ||_| _|\n"
        expect(BankOcr.new(num).account_number).to eq '123456789'
      end
      
      it 'parses another account number' do
        num = "    _  _     _  _  _  _  _ \n" +
              "  | _| _||_||_ |_   ||_||_|\n" +
              "  | _| _|  | _||_|  ||_||_|\n"
        expect(BankOcr.new(num).account_number).to eq '133456788'
      end
      
      it 'returns an error if the number can not be parsed' do
        num = "    _  _     _  _  _  _  _ \n" +
              "  | _| _||_||_ |_   ||_||_|\n" +
              "  _| _|  | _||_|  ||_||_|\n"
        expect do
          BankOcr.new(num).account_number
        end.to raise_error "The account number could not be parsed"
      end
    end
  end

=end