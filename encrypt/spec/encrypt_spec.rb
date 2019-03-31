require_relative '../encrypt'

describe '#encrypt' do
  it 'should return an empty string if sent with an empty string' do
    actual = encrypt('')
    expected = ''
    expect(actual).to eq(expected)
  end

  it 'should return an encrypt sentence' do
    actual = encrypt('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG')
    expected = 'QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD'
    expect(actual).to eq(expected)
  end

  it 'should return an encrypt sentence with special caracters intact' do
    actual = encrypt('THE QUICK BROWN FOX JUMPS, OVER THE LAZY DOG')
    expected = 'QEB NRFZH YOLTK CLU GRJMP, LSBO QEB IXWV ALD'
    expect(actual).to eq(expected)
  end
end