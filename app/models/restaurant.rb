class Restaurant < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :menu, MenuUploader
  belongs_to :city
  belongs_to :institution
  has_many :comments, dependent: :destroy

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
