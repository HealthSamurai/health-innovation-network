ActiveAdmin.register Story do
  # Create sections on the index screen
  scope :all, default: true

  permit_params :title_en, :title_ru, :body_en, :body_ru

  # Customize columns displayed on the index screen in the table
  # index do
  #   column :title
  #   column "Price", sortable: :price do |product|
  #     number_to_currency product.price
  #   end
  #   default_actions
  # end

end
