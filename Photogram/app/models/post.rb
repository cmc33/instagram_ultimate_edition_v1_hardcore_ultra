class Post < ActiveRecord::Base  
  validates :user_id, presence: true  
  validates :image, presence: true
  validates_length_of :caption, :minimum => 5, :maximum => 5, :allow_blank => true
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end  
