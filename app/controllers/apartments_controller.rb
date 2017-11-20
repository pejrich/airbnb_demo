require 'open-uri'

class ApartmentsController < ApplicationController

  API = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

  def index
    @data = JSON.parse(open(API).read)
  end
end

