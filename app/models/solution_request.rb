class SolutionRequest
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :subject, :message

  validates :name, :email, :subject, :message, :presence => true
end
