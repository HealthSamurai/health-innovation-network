ActiveAdmin.register User do
  scope :all, default: true
  permit_params :email

  index do
    selectable_column
    column :email

    column "Action" do |u|
      link_to "edit", admin_user_path(u)
    end
  end
end
