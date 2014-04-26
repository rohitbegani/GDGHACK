class Wedding < ActiveRecord::Base
  attr_accessible :bride, :groom, :name, :longitude, :latitude
end
