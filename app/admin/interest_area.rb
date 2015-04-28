ActiveAdmin.register InterestArea   do
  scope :all, default: true
  permit_params :title
end
