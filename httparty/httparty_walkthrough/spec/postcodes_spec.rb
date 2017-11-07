require 'spec_helper'

describe "postcodes single service" do

  before(:each) do
    service = PostcodesService.new
    @api_tests = service.single_postcode_call('cr77ha')
    # @json = JSON.parse(HTTParty.get('https://api.postcodes.io/postcodes/cr77ha').body)
  end

  it 'has a space in its postcode' do
    expect @api_tests['result']['postcode'].should include (" ")
  end

  it 'should have 6 character length eastings and northings' do
    expect (@api_tests['result']['eastings'].length).to be == 6
  end

  it 'should have integer eastings and northings' do
    expect (@api_tests['result']['eastings']).should be_kind_of(Integer)
    expect (@api_tests['result']['northings']).should be_kind_of(Integer)
  end

  it 'should have an English postcode' do
    expect (@api_tests['result']['country']).should == "England"
  end

  it 'should be outbound CR7' do
    expect @api_tests['result']['outcode'].should == "CR7"
  end

  it 'should have an English postcode' do
    expect @api_tests['result']['incode'].should == "7HA"
  end

  it 'should have have a float longitude' do
    expect @api_tests['result']['longitude'].should be_kind_of(Float)
  end

  it 'should have have a float longitude' do
    expect @api_tests['result']['latitude'].should be_kind_of(Float)
  end

end
