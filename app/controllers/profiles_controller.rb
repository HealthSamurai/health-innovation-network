class ProfilesController < ApplicationController
  def show
  end

  def update
    user_attrs = params.require(:user).permit(
      :areas_willing_to,
      :avatar,
      :city, :state,
      :company_category_id,
      :company_is_accelerator,
      :company_ace_name,
      :company_ace_url,
      :company_ace_contact,
      :company_name,
      :email,
      :engagement_interest_other,
      :interest_area_other,
      :interest_number_one_issue,
      :name,
      :is_public,
      :linkedin,
      :phone,
      :position,
      {member_type_ids: []},
      {engagement_interest_ids: []},
      {interest_area_ids: []}
    )
    current_user.attributes = user_attrs
    current_user.save!
    redirect_to profile_path, flash: {notice: 'Updated'}
  end
end
