class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all
    end

    def create
        @appearance = Appearance.create(appearance_params( :episode_id, :guest_id, :rating))
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path   
        end

    end

    private

    def appearance_params(*args)
        params.require(:appearance).permit(*args)
    end
end
