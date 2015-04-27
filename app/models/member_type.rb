class MemberType < ActiveRecord::Base
  has_many :users
end
