class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id]) 
  end 

  def new 
    @guest = Guest.new 
  end 

  def create 
    @guest = Guest.create(guest_params) 
    redirect_to guest_path(@guest) 
  end 

  
end
