class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  private

  def appearance_params
    params.require(:episode).permit(:episode_id)
  end
  
end
