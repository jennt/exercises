require 'leap_year'

describe '#is_leap_year?' do
  context 'when it is a leap year' do
    it 'returns true' do
      expect(is_leap_year?(2000)).to eq true
      expect(is_leap_year?(2004)).to eq true
    end
  end

  context 'when it is not a leap year' do
    it 'returns false' do
      expect(is_leap_year?(1900)).to eq false
      expect(is_leap_year?(2003)).to eq false
    end
  end
end
