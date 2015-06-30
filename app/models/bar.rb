class Bar < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true, uniqueness: { scope: [:zip], message: "Address already in use." }
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :description, length: { maximum: 300 }
  validates :url, format: { with: /(https?:\/\/)?/,
                            message: "Must be valid URL" }
  validates :photo_url, format: { with: /(https?:\/\/)?/,
                                  message: "Must be valid URL" }
end
