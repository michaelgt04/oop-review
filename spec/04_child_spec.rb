require_relative 'spec_helper'

RSpec.describe Child do
  let(:child) { Parent.new('Dill Pickles') }
  let(:honey_nut_cheerios) { Cereal.new("Honey Nut Cheerios", 4, 2) }

  describe '#new' do
    it 'takes in name as an arugment and inherits from User' do
      expect(child).to be_a(child)
      expect(Child.superclass).to eq(User)
    end
  end

  describe '#ask_permission' do
    it 'returns a string that asks if they can eat their favorite cereal' do
      child.favorite_cereal(honey_nut_cheerios)
      expect(honey_nut_cheerios.ask_permission).to eq('Can I have #{honey_nut_cheerios.name}?')
    end
  end
end
