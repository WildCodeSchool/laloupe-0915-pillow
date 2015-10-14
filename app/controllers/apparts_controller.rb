class AppartsController < ApplicationController
  def index
    @apparts = Appart.all
  end
end
