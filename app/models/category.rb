class Category < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  belongs_to :user
end
