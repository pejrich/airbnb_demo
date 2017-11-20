require 'open-uri'

class ApartmentsController < ApplicationController

  API = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

  def index
    @data = parse
  end

  def show
    @apt = params[:id]
    @data = parse
    @data.find {|apt| apt["name"] == @apt }
  end

  private

  def parse
    JSON.parse(open(API).read)
  end

end

