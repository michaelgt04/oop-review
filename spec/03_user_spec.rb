require_relative 'spec_helper'

RSpec.describe User do
  let(:frosted_user) { User.new('Tony Tiger') }
  let(:frosted_flakes) { Cereal.new('Frosted Flakes', 4, 5) }

  describe '#new' do
    it 'takes a name as an argument' do
      expect(frosted_user).to be_a(User)
    end
  end

  describe '#name' do
    it 'has a reader for name' do
      expect(frosted_user).to eq('Tony Tiger')
    end
  end

  describe '#favorite_cereal' do
    it 'has a reader for favorite cereal' do
      expect(frosted_user.favorite_cereal).to be_a(Cereal)
      expect(frosted_user.favorite_cereal.name).to eq('nil')
    end

    it 'takes in an argument and sets the favorite cereal to that' do
      #could refactor to a writer
      frosted_user.favorite_cereal(frosted_flakes)

      expect(frosted_user.favorite_cereal).to eq(frosted_flakes)
    end
  end
end
