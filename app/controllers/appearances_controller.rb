class AppearancesController < ApplicationController

  def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
    @appearances = Appearance.all
    @episodes = Episode.all
    @guests = Guest.all
  end

  def create
   @appearance = Appearance.create(app_params)
   if @appearance.valid?
    flash[:success] = "SUCCESS!!"
    redirect_to episode_path(@appearance)
   else
    flash[:my_errors] = appearance.errors.full_message
    redirect_to new_appearance_path
   end
  end


  private

  def app_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
