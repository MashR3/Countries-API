require 'httparty'
require 'json'

class NameCountries
  include HTTParty

  base_uri 'https://restcountries.eu/rest/v2/'

  def get_countries_by_name(name)
    JSON.parse(self.class.get("/name/#{name}").body)
  end

  def get_country_capital(name)
    get_countries_by_name(name)[0]["capital"]
  end

  def get_region(name)
    get_countries_by_name(name)[0]["region"]
  end

  def get_country_area(name)
    get_countries_by_name(name)[0]["area"]
  end

  def get_country_borders(name)
    get_countries_by_name(name)[0]["borders"]
  end

  def get_flag_url(name)
    get_countries_by_name(name)[0]["flag"]
  end
end

p NameCountries.new.get_flag_url("Italy")
