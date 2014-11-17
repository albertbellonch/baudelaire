require 'active_record'

load File.dirname(__FILE__) + '/schema.rb'

class TvShow < ActiveRecord::Base
  symbolize :kind
end
