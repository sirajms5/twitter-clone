class RelationshipsController < ApplicationController

    def create
        other_user = Profile.find(params[:profile_id])
        @rel = Relationship.new(follower_id: current_user.profile.id,
                                followed_id: other_user.id)
        @rel.save
        redirect_to profile_path(other_user)
    end

    def destroy
        @rel = Relationship.find(params[:id])
        @rel.destroy
        redirect_to profile_path(@rel.followed_id)
    end
end
