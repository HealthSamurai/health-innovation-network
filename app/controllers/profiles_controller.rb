class ProfilesController < ApplicationController
  def show
  end

  def update
    user_attrs = params.require(:user).permit(:name, :name_is_public, :avatar, :avatar_is_public)
    current_user.attributes = user_attrs
    current_user.save!
    redirect_to profile_path, flash: {notice: 'Updated'}
  end
end
