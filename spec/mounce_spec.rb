require File.join(File.dirname(__FILE__),'spec_helper')
 
describe Mounce do
  it "should require a config file" do
    lambda{Mounce.new('spec/non-existant-config.yml')}.should raise_error(RuntimeError)
  end

  context 'Streaming music' do
    before(:all) do
      mock_osa = mock(:osa, :current_stream_title => 'Silverchair - Abuse Me')
      OSA.stub!(:app).with('iTunes').and_return(mock_osa)
      @mounce = Mounce.new('spec/mounce.yml')
    end

    it "should find the artist" do
      @mounce.artist.should == 'Silverchair'
    end

    it "should find track" do
      @mounce.track.should == 'Abuse Me'
    end

    it 'should tag the message' do
      @mounce.message.should == '#music Silverchair - Abuse Me'
    end
  end

  context 'Local music' do
    before(:all) do
      mock_track = mock(:track, :artist => 'Bush', :name => 'Greedy Fly')
      mock_osa = mock(:osa, :current_stream_title => nil, :current_track => mock_track)
      OSA.stub!(:app).with('iTunes').and_return(mock_osa)
      @mounce = Mounce.new('spec/mounce.yml')
    end
    
    it 'should find the artist' do
      @mounce.artist.should == 'Bush'
    end

    it 'should find the track' do
      @mounce.track.should == 'Greedy Fly'
    end

    it 'should tag the message' do
      @mounce.message.should == '#music Bush - Greedy Fly'
    end
  end
end

