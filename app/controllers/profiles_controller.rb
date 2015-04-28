class ProfilesController < ApplicationController
  def show
  end

  def update
    user_attrs = params.require(:user).permit(
      :areas_willing_to,
      :avatar,
      :city, :state,
      :company_category_id,
      :company_contact_person,
      :company_is_accelerator,
      :company_name,
      :company_name_of_ace,
      :company_site,
      :email, :email_is_public,
      :engagement_interest_other,
      :interest_area_other,
      :name, :name_is_public,
      :phone,
      {member_type_ids: []},
      {engagement_interest_ids: []},
      {interest_area_ids: []}
    )
    current_user.attributes = user_attrs
    current_user.save!
    redirect_to profile_path, flash: {notice: 'Updated'}
  end
end
