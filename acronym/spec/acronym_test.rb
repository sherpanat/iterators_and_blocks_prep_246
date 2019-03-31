require_relative '../acronym'

describe '#acronymize' do
  it 'should return an empty string if empty string passed' do
    actual = acronymize('')
    expected = ''
    expect(actual).to eq(expected)
  end

  it 'should return an acronym' do
    actual = acronymize('World Wide Web')
    expected = 'WWW'
    expect(actual).to eq(expected)
  end

  it 'should return an acronym with upcased letters' do
    actual = acronymize('world wide web')
    expected = 'WWW'
    expect(actual).to eq(expected)
  end
end