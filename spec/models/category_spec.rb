require 'rails_helper'


class Calculator
  def subtract(number_one,number_two)
    return number_one - number_two
  end
end

RSpec.describe Calculator do
  describe "#subtract" do
    it "should return the difference between numbers" do
      calculator = Calculator.new
      result = calculator.subtract(10,4)
      expect(result).to eq(6)
    end
  end
end


