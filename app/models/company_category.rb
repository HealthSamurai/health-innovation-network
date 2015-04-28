class CompanyCategory < ActiveRecord::Base
  has_many :users
end
