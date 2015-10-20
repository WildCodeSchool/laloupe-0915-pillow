class UsersController < ApplicationController
  before_action :authenticate_user!
  #before_action :set_home, only: [:show, :edit, :update, :destroy]

  def edit 
  	@user = User.new
  end

  def index
  end

  def create
  	if @user.save
     redirect_to user_path
   else
     render :new
  	end
  end

  def show
    @users = User.find(params[:id])
    render "devise/confirmations/show"
  end

  def update
  	render "devise/confirmations/update"
  	@users = User.find(params[:id])
  end

end