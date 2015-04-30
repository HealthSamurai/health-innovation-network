ActiveAdmin.register User do
  scope :all, default: true
  permit_params :email,
    :encrypted_password,
    :admin,
    :sign_in_count,
    :unconfirmed_email,
    :name,
    :position,
    :position_is_public,
    :city,
    :state,
    :phone,
    :company_name,
    :company_position,
    :company_category_id,
    :company_is_accelerator,
    :company_ace_name,
    :company_ace_url,
    :company_ace_contact,
    :linkedin,
    :areas_willing_to,
    :engagement_interest_other,
    :interest_area_other,
    :is_public,
    :interest_number_one_issue

  index do
    selectable_column
    column :email

    column "Action" do |u|
      link_to "edit", admin_user_path(u)
    end
  end
end
