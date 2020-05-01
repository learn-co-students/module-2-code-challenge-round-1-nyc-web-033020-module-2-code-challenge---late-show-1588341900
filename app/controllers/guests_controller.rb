class GuestsController < ApplicationController
  before_action :find_guest, only: [:show]

  def index
    @guests = Guest.all
  end

  def show
    @episodes = @guest.episodes
    @episodes = @episodes.sort_by { |ep| -ep.average_rating }
  end

  private

  def find_guest
    @guest = Guest.find(params[:id])
  end
end
