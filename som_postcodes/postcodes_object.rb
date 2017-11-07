require 'httparty'
require 'json'

class PostcodesService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def single_postcode_call(postcode)
    # DOUBLE QUOTES because of the interpolation!! Breaks if single quotes
    JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def multiple_postcode_call(postcodes_array)
    JSON.parse(self.class.post("/postcodes", body: {"postcodes" => postcodes_array}).body)
  end

end

postcodes_service = PostcodesService.new

puts postcodes_service.multiple_postcode_call(['se3 8Pf', 'se9 6rj'])
