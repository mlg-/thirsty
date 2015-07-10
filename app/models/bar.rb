class Bar < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

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

  paginates_per 10

  include PgSearch
  pg_search_scope :search, against:
    [:name,
    :address,
    :city,
    :state,
    :zip,
    :description], using: { tsearch: { prefix: true } }
end
