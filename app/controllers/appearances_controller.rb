class AppearancesController < ApplicationController
    
    
    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episode = Episode.all

        render :new
    end

    def create
        @appearance = Appearance.create(appearance_params)
        redirect_to episode_path(Appearance.episode)
    end

    private

    def appearance_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end
end
