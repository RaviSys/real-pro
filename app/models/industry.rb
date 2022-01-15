class Industry < ApplicationRecord
  has_many :companies
  validates :name, presence: true, uniqueness: true
end
