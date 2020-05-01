class GuestEpisodesController < ApplicationController

    def new
        @guest_episode = GuestEpisode.new

        @guests = Guest.all 
        @episodes = Episode.all
    end

    def create
        @guest_episode = GuestEpisode.new(ge_params)
        
        if @guest_episode.save
            redirect_to guest_episode_path(guest_episode.episode)
        else
            flash[:errors] = guest_episode.errors.full_messages
            redirect_to new_guest_episode_path
        end
    end

    private

    def ge_params
        params.require(:guest_episode).permit(:guest_id, :episode_id)
    end
end
