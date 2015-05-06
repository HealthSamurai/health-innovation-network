ActiveAdmin.register Story do
  scope :all, default: true
  permit_params :abstract,
                :body,
                :created_at,
                :image,
                :published,
                :status,
                :title
end
