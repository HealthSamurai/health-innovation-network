ActiveAdmin.register CompanyCategory   do
  scope :all, default: true
  permit_params :title
end
