class Relationship < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  validates :follower_id, presence: true
  validates :follower_id, presence: true
=======
  belongs_to :follower, class_name: 'User'
  belongs_to :followed, class_name: 'User'
  validates :follower_id, presence: true
  validates :followed_id, presence: true
>>>>>>> origin/working
end
