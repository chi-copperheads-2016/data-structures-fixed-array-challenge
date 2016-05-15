require_relative 'fixed_array'

describe FixedArray do
  let(:array) { FixedArray.new(5) }

  it 'is an array that has a length' do
    expect(array.size).to eq(5)
  end

  it 'gets the value from the array at the specified index' do
    expect(array.get(1)).to eq(nil)
  end

  it 'sets a value in the array at a specific index' do
    expect(array.set(1, 5)).to eq(5)
  end
end
