class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :blogs, dependent: :destroy
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :liked_blogs, through: :likes, source: :blog
  def already_liked?(blog)
    self.likes.exists?(blog_id: blog.id)
  end

end
