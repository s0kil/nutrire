require 'rails_helper'

RSpec.describe Nutrient, type: :model do
  it 'Creates A Valid Nutrient' do
    nutrient = build(:nutrient)
    assert(nutrient.valid?)
  end

  it 'Does Not Create Invalid Nutrient' do
    nutrient = described_class.new
    assert(!nutrient.valid?)
  end
end
