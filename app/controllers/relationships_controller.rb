class RelationshipsController < ApplicationController

    def create
        other_user = Profile.find(params[:profile_id])
        @rel = Relationship.new(follower_id: current_user.profile.id,
                                followed_id: other_user.id)
        @rel.save
        unless params[:source] == "column-right"
            redirect_to profile_path(other_user)
        end
    end

    def destroy
        @rel = Relationship.find(params[:id])
        @rel.destroy
        redirect_to profile_path(@rel.followed_id)
    end
end
