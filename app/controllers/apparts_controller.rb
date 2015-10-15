class AppartsController < ApplicationController
  def index
    @apparts = Appart.all
  end
  def bien
    @appart = Appart.find(params[:id])
  end
end
