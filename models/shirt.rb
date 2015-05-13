require_relative '../lib/connections'

class Shirt < ActiveRecord::Base
  register Sinatra::Partial
end
