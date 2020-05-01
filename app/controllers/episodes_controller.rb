class EpisodesController < ApplicationController

  before_action :find_episode, only: [:show]
  def index
    @episodes = Episode.all
  end

  def show
 
  end

  private
  def find_episode
    # raise params.inspect
    @episode = Episode.find(params[:id])
  end
end
