ActiveAdmin.register Story do
  scope :all, default: true
  permit_params :title_en, :title_ru, :body_en, :body_ru
end
