class Appart < ActiveRecord::Base
  geocoded_by :full_adress  # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  def full_adress
    "#{adress}, #{city}" # definition d'une methode full_adress pour géolocaliser sur l'adresse et la ville 
  end
end
