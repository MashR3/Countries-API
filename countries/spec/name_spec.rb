require 'spec_helper'

# Multiple city weather service tests
describe "One named country" do

# before all, instantiate the class in variable 'weather' and the run the tests on the instance variable of running the method on it.
  before(:all) do
    @country = NameCountries.new
  end

  it 'will return the Capital as a String' do
    expect(@country.get_country_capital('Italy')).to be_kind_of(String)
  end

  it 'will give a valid region' do
    expect(@country.get_region('Italy')).to eq('Europe')
  end

end
