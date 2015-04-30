class Story < ActiveRecord::Base
  class Attachment < ActiveRecord::Base
  end
  has_many :attachment, class_name: 'Story::Attachment'
  belongs_to :user

  validates :title, presence: true
  validates :body,  presence: true

  has_attached_file :image,
    :styles => { :large => '700x700', :medium => "300x300>", :thumb => "100x100>" }

  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
