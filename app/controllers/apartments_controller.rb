require 'open-uri'

class ApartmentsController < ApplicationController

API = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

def index
  @data = open(API).read
  @data = JSON.parse @data
end
end

