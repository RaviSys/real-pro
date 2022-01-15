class Company < ApplicationRecord
  belongs_to :industry
  validates :name, presence: true, uniqueness: true
end
