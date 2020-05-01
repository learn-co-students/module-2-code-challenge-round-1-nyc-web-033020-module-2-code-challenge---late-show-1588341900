class AppearancesController < ApplicationController

    def new
        @guests = Guest.all
        @episodes = Episode.all 
        @appearance = Appearance.new
    end

    def create
        #After submitting the form, the user should be redirected 
        #to the selected episode's show page.
        @appearance = Appearance.create(appearances_params)
        if @appearance.valid?
            redirect_to episode_path(appearances.episode)
        else
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def appearances_params
        params.require(:appearances).permit(:guest_id, :episode_id, :rating)
    end

end
