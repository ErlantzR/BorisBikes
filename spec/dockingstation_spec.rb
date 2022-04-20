require 'DockingStation'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
  
  it "Does the bike work?" do
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end

  it "It docks domething?" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end

  it "Raise an error when no bikes" do
    expect{subject.release_bike}.to raise_error
  end


 it {is_expected.to respond_to :dock }
end
