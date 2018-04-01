require 'airport'
Create a dummy airport object with the stubbed method booze that returns the symbol gin.
describe Airport do
  subject(:airport) { Airport.new }
  let (:dummy_plane) { double :plane }
  let (:dummy_weather_sunny) { double :weather, forecast: :sunny }
  let (:dummy_weather_stormy) { double :weather, forecast: :stormy }
  

  describe '#land' do
    it 'instructs plane to land at airport if forecast is sunny' do
      subject.land(dummy_plane, dummy_weather_sunny)
      expect(subject.hangar.length).to eql(1)
    end

    it 'prevents landing at airport if forecast is stormy' do
      subject.land(dummy_plane, dummy_weather_stormy)
      expect(subject.hangar.length).to eql(0)
    end

    it 'prevents landing at airport when airport is full' do
      Airport::FULL.times { subject.land(dummy_plane, dummy_weather_sunny) }
      expect { subject.land(dummy_plane, dummy_weather_sunny) }.to raise_error 'Airport is full'
    end
  end

  describe '#takeoff' do
    it 'instructs plane to takeoff from airport if forecast is sunny' do
      subject.land(dummy_plane, dummy_weather_sunny)
      subject.takeoff(dummy_plane, dummy_weather_sunny)
      expect(subject.hangar.length).to eql(0)
    end

    it 'instructs plane to stay at airport if forecast is stormy' do
      subject.land(dummy_plane, dummy_weather_sunny)
      subject.takeoff(dummy_plane, dummy_weather_stormy)
      expect(subject.hangar.length).to eql(1)
    end
  end
end
