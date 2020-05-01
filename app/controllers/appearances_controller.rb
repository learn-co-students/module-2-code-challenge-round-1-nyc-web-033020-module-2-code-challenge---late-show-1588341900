class AppearancesController < ApplicationController

    def new 
        @episodes = Episode.all 
        @guests = Guest.all
        @appearance = Appearance.new
    end

    def create 
        @appearance = Appearance.create(a_params)
        if @appearance.valid?
        redirect_to episode_path(a_params[:episode_id])
        else 
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private 

    def a_params 
        params.require(:appearance).permit(:guest_id, :numeric_rating, :episode_id)
    end
  end
  