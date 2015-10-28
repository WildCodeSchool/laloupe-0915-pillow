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
      @categories
    end
    @hash = Gmaps4rails.build_markers(@apparts) do |appart, marker|
    marker.lat appart.latitude
    marker.lng appart.longitude
    end  
  end

 def byprice
  if params[:format] != nil
    @apparts = Appart.where(city: params[:format].titleize)
    @byprice = @apparts.sort_by{|apt| apt.price}
  else
    @byprice = Appart.all.sort_by {|apt| apt.price}
  end
   @hash = Gmaps4rails.build_markers(@apparts) do |appart, marker|
    marker.lat appart.latitude
    marker.lng appart.longitude
    end  
 end

  def byaccommodates
    if params[:format] != nil
        @apparts = Appart.where(city: params[:format].titleize)
        @byaccommodates = @apparts.sort_by{|apt| apt.accommodates}
      else
        @byaccommodates = Appart.all.sort_by {|apt| apt.accommodates}
      end 
    @hash = Gmaps4rails.build_markers(@apparts) do |appart, marker|
    marker.lat appart.latitude
    marker.lng appart.longitude
    end  
  end
  
  def create
  @appart = Appart.new(appart_params)
    if @appart.save
      redirect_to  "/appart/#{@appart.id}"
    else
      @appart = "Submit"
      render :new
    end
  end   

  def host
    @appart = Appart.new
  end

  def bien
    @appart = Appart.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def appart_params
    params.require(:appart).permit(:adress, :room_type, :property_type, :accommodates, :city, :title, :bedroom_nb, :beds_nb, :price, :zip_code, :country, :amenities, :images) 
  end

end
