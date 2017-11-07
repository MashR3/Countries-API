require 'spec_helper'

describe "postcodes multiple service" do

  before(:each) do
    service = PostcodesService.new
    @api_tests = service.multiple_postcode_call('cr77ha', 'se114pq')
  end
