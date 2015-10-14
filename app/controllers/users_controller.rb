class UsersController < ApplicationController
  before_action :authenticate_user!
  #before_action :set_home, only: [:show, :edit, :update, :destroy]
end
