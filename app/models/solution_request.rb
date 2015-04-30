class SolutionRequest
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :phone, :request, :idea, :help, :executive

  validates :name, :email, :presence => true
end
