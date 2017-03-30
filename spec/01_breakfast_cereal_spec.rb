require_relative 'spec_helper'

RSpec.describe BreakfastCereal do
  let(:good_cereal) { BreakfastCereal.new("Reese's Puffs", 5, 5) }
  let(:bad_cereal) { BreakfastCereal.new('Raisin Bran', 2, 2) }

  describe '.new' do
    it 'takes a name, rating and sugar content' do
      expect(good_cereal).to be_a(BreakfastCereal)
    end
  end

  describe '#name' do
    it 'has a reader for name' do
      expect(good_cereal.name).to eq("Reese's Puffs")
    end
  end

  describe '#rating' do
    it 'has a reader for rating' do
      expect(good_cereal.rating).to eq(5)
    end
  end

  describe '#sugar_content' do
    it 'has a reader for sugar content' do
      expect(good_cereal.sugar_content).to eq(5)
    end
  end

  describe '#delicious?' do
    it 'determines whether a cereal is delicious or garbage(< 3 stars)' do
      expect(good_cereal.delicious?).to eq(true)
      expect(bad_cereal.delicious?).to eq(false)
    end
  end
end
