class AppartsController < ApplicationController
  
  def index
    if params[:query].blank?  
      # blank? => méthode rails pour préciser que la valeur est vide
      # blank? fini par un ? => il s'agit donc d'une méthode retournant un booléen
      @apparts = Appart.all
    else
      # NE PAS UTILISER Appart.where("city like '%#{params[:query]}%'")
      # car on insère le params[:query] qui est une valeur fourni par l'utilisateur
      # directement dans une requête SQL => risque d'injection SQL => faille de sécu
      query = "%#{params[:query]}%"
      @apparts = Appart.where("city like ?", query)
    end
    @hash = Gmaps4rails.build_markers(@apparts) do |appart, marker|
    marker.lat appart.latitude
    marker.lng appart.longitude
end
  end

  def bien
    @appart = Appart.find(params[:id])
  end

end
