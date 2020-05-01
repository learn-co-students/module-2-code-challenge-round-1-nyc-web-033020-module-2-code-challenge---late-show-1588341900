class GuestEpisodesController < ApplicationController

    validates :rating, numericality: { greater_than_or_equal_to: 1 }
    validates :rating, numericality: { less_than_or_equal_to: 5 }

    def new
        @guestepisodes = GuestEpisode.new
    end

    def create
        guestepisode = GuestEpisode.new
        if guestepisode.valid?
            redirect_to guest_episodes_path(guestepisode)
        else
            flash[:errors] = guestepisode.errors.full_messages
            redirect_to new_guest_episodes_path
        end
    end
end
