require_relative 'spec_helper'

RSpec.describe Milk do
  let(:chocolate_milk) { Milk.new('Chocolate', 1) }

  describe '#new' do
    it 'takes in a flavor and fat percent as an argument' do
      expect(chocolate_milk).to be_a(Milk)
    end
  end

  describe '#flavor' do
    it 'has a reader for flavor' do
      expect(chocolate_milk.flavor).to eq('Chocolate')
    end
  end

  describe '#fat_percent' do
    it 'has a reader for fat percentage' do
      expect(chocolate_milk.fat_percent).to eq(1)
    end
  end
end
