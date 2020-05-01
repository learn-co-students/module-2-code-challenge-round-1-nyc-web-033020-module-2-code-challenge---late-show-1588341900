class EpisodesController < ApplicationController
  before_action :find_show, only: [:show]
  def index
    @episodes = Episode.all
  end

  def show 
  end 

  private 

  def find_show
    @episode = Episode.find(params[:id])
  end
end
