require 'HTTParty'
require 'json'
require_relative 'services/all'
require_relative 'services/name'

# Overarching class to hold the methods for all the services provided by the one API
class CountryServices
  include HTTParty
  # The base link to access the API
  # base_uri 'https://restcountries.eu/rest/v2/'

  def all_countries
    AllCountries.new
  end

  # Country by native name or partial name
  def name_countries
    NameCountries.new
  end

end
