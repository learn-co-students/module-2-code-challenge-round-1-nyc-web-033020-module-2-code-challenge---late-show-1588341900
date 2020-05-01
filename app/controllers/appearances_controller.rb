class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create

    if @appearance.valid? 
        redirect_to appearance_path(@appearance)
    else
        flash[:errors] = @appearance.errors.full_message
        
    end
  end


end
