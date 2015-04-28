ActiveAdmin.register EngagementInterest   do
  scope :all, default: true
  permit_params :title
end
