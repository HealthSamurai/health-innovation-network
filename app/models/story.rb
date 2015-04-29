class Story < ActiveRecord::Base
  class StoryAttachment < ActiveRecord::Base
  end
  has_many :attachment, class_name: 'Story::StoryAttachment'
  belongs_to :user

  validates :title, presence: true
  validates :body,  presence: true
end
