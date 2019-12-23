class Restaurant < ApplicationRecord
  belongs_to :city
  belongs_to :institution

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
