require_relative 'spec_helper'

RSpec.describe User do
  let(:frosted_user) { User.new('Tony Tiger') }
  let(:frosted_flakes) { BreakfastCereal.new('Frosted Flakes', 4, 5) }

  describe '#new' do
    it 'takes a name as an argument' do
      expect(frosted_user).to be_a(User)
    end
  end

  describe '#name' do
    it 'has a reader for name' do
      expect(frosted_user.name).to eq('Tony Tiger')
    end
  end

  describe '#favorite_cereal' do
    it 'has writer for favorite_cereal' do
      frosted_user.favorite_cereal = frosted_flakes
      expect(frosted_user.favorite_cereal).to eq(frosted_flakes)
    end
  end
end
