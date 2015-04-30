class ProfilesController < ApplicationController
  before_filter :ensure_signed

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
      :password, :password_confirmation,
      {member_type_ids: []},
      {engagement_interest_ids: []},
      {interest_area_ids: []}
    )

    password = user_attrs[:password]

    unless password.present?
      user_attrs.except!(:password, :password_confirmation)
    end

    current_user.attributes = user_attrs
    current_user.save

    if current_user.errors.empty?
      sign_in(current_user, :bypass => true) if password.present?
      redirect_to profile_path, flash: {notice: 'Updated'}
    else
      render :show
    end
  end

  protected

  def ensure_signed
    redirect_to root_path unless current_user
  end
end
