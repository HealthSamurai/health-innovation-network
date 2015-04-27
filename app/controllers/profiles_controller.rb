class ProfilesController < ApplicationController
  def show
  end

  def update
    user_attrs = params.require(:user).permit(
      :email, :email_is_public,
      :name, :name_is_public,
      :city, :state,
      :avatar,
      {member_type_ids: []},
      {member_interest_ids: []}
    )
    current_user.attributes = user_attrs
    current_user.save!
    redirect_to profile_path, flash: {notice: 'Updated'}
  end
end
