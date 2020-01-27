class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts, dependent: :destroy
<<<<<<< HEAD

         has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy #adding a field called active_relationships which will corelate with our relationship model
         #allow us to differentiate between you being followed(active_relationship) and you following someone else(passive_relationship)
         #active_relationship / how im able to follow other users
         has_many :following, through: :active_relationships, source: :followed


         #passive_relationship / how im able to be followed by other users
         has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
         has_many :followers, through: :passive_relationships, source: :follower
         
         #helper methods

         #follow another User
         def follow(other)
           active_relationships.create(followed_id: other.id)
         end

         #unfollow a User
         def unfollow(other)
           active_relationships.find_by(followed_id: other.id).destroy
         end

         #Are they following a User?
         def following?(other)
           following.include?(other)
         end
=======
         has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy

         has_many :following, through: :active_relationships, source: :followed
>>>>>>> origin/working
end
