class AppearancesController < ApplicationController
    

    def new
        @appearance = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all
    end

    def create
        @appearance = Appearance.create(appearances_params)
        
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearrance_path
    end
    
    private 

    def appearances_params
        params.require(:appearance).permit(:episode_id, :guest_id)
    end

end
