class Product < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: true # video API 1.01.12
  validates :kind, presence: true
  validates :months_available, presence: true
  validates :seasons_available, presence: true

end
