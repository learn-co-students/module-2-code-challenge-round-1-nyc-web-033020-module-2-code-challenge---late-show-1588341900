class AppearancesController < ApplicationController
  def new
    @guests = Guest.all
    @episodes = Episode.all
    @appearance = Appearance.new
  end
  def create
    appearance = Appearance.new(appearance_params)
    if appearance.save
      redirect_to episode_path(appearance[:episode_id])
    else
      flash[:err] = appearance.errors.full_messages
      redirect_to new_appearance_path
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:rating, :episode_id, :guest_id)
  end
end
