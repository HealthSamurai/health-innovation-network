ActiveAdmin.register Story do
  scope :all, default: true
  permit_params :title, :body
end
