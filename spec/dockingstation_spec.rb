require 'DockingStation'

describe DockingStation do

  it {is_expected.to respond_to :release_bike}

  it "Get a bike and expect method 'working?' to work" do
    bike = subject.release_bike
    expect(bike.working?).to eq(true)
  end

end
