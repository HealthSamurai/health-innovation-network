ActiveAdmin.register MemberType   do
  scope :all, default: true
  permit_params :title
end
