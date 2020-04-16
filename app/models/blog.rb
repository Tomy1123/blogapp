class Blog < ApplicationRecord
  has_many :comments, dependent: :delete_all
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  mount_uploader :image, ImageUploader
  validates :title, presence: true


  # scope :search, (->(word) { where('title LIKE ? OR body LIKE ?',
  #   "%#{sanitize_sql_like(word)}%",
  #   "%#{sanitize_sql_like(word)}%") })

  # scope :title_like, -> (value) {
  #   pattern = ActiveRecord::Base.send(:sanitize_sql_like, value)
  #   where('title LIKE ?', "%#{pattern}%")
  # }

  #   scope :get_by_title, ->(title) {
  #     where("title like ?", "%#{title}%")
  # }

  def self.search(search)
    return Blog.all unless search
    Blog.where('title LIKE(?)', "%#{search}%")
  end

end
