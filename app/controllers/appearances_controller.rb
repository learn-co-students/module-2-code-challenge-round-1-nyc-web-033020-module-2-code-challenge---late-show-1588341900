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
    @appearance = Appearance.find
  end



end
