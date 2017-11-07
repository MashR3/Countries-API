require 'spec_helper'

# Single city weather service tests
describe "get all countries" do

# before all, instantiate the class in variable 'weather' and the run the tests on the instance variable of running the method on it.
  before(:all) do
    country = AllCountries.new
    @api_tests = country.get_all_countries
  end

  it 'will return the data as an Array' do
    expect(@api_tests).to be_kind_of(Array)
  end

end
