require 'weather'

describe Weather do
  subject(:weather) { Weather.new }

  describe '#forecast' do
    it 'returns a weather pattern' do
      expect(subject.forecast).to eq(:stormy).or(eq(:sunny))
    end
  end
end
