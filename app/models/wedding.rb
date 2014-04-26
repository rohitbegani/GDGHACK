class Wedding < ActiveRecord::Base
  attr_accessible :bride, :groom, :name, :longitude, :latitude, :address, :description

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

end
