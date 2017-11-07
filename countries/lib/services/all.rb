require 'httparty'
require 'json'

class AllCountries
  include HTTParty

  base_uri 'https://restcountries.eu/rest/v2/'

  def get_all_countries
    x = JSON.parse(self.class.get('/all').body)
  end


end
