class Story < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :body,  presence: true

  has_attached_file :image,
    :styles => { :large => '700x700', :medium => "300x300>", :thumb => "100x100>" }

  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  scope :for_landing, -> { sorted.limit(4) }
  scope :sorted, -> { order('created_at DESC') }
end
