require_relative '../lib/leap'

RSpec.describe '../lib/leap' do
  describe '#leap?' do
    it 'returns true when is a leap year' do
      expect(Year.leap?(2015)).to eq false
    end

    it 'returns true when is a leap year' do
      expect(Year.leap?(2020)).to eq true
    end

    it 'returns true when is a leap year' do
      expect(Year.leap?(2100)).to eq false
    end

    it 'returns true when is a leap year' do
      expect(Year.leap?(2000)).to eq true
    end
  end
end
