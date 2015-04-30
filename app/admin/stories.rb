ActiveAdmin.register Story do
  scope :all, default: true
  permit_params :abstract,
                :body,
                :created_at,
                :published,
                :status,
                :title
end
