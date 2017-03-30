require_relative 'spec_helper'

RSpec.describe Parent do
  let(:parent) { Parent.new('Ron Swanson') }

  describe '#new' do
    it 'takes in name as an arugment and inherits from User' do
      expect(parent).to be_a(Parent)
      expect(Parent.superclass).to eq(User)
    end
  end

  describe '#response' do
    it 'says no to anything they are asked' do
      expect(parent.response).to eq("No you can't have that!")
    end
  end
end
