class AppearancesController < ApplicationController

    def new
        @guests = Guest.all
        @episodes = Episode.all 
        @appearance = Appearance.new
    end

    def create
        #After submitting the form, the user should be redirected 
        #to the selected episode's show page.
        @appearance = Appearance.create(appearance_params)
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end
