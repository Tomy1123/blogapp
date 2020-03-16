class Upload < ApplicationRecord
  mount_uploader :image, Imagesloader
end
