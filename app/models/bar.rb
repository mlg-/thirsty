class Bar < ActiveRecord::Base
  # has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true,
                      uniqueness: { scope: [:name],
                                    message: "Bar already exists." }
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :description, length: { maximum: 300 }
  validates :url, format: { with: /(https?:\/\/)?/,
                            message: "Must be valid URL" }
  validates :photo_url, format: { with: /(https?:\/\/)?/,
                                  message: "Must be valid URL" }
end
