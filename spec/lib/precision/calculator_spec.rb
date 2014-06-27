require 'spec_helper'

module Precision
  describe Calculator do

    scenarios = {
      nil => 0,
      "0.0" => 0,
      "1.0" => 0,
      "1.1" => 1,
      "10.0" => 0,
      "10.12" => 2,
      10.12 => 2,
      BigDecimal("10.111") => 3,
      1 => 0
    }

    scenarios.each do |decimal, precision|
      it "expects #{decimal.inspect} to have precision of #{precision}" do
        calculator = described_class.new(decimal)
        expect(calculator.calculate).to eq precision
      end
    end

  end
end
