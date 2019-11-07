class Heroine < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :super_name, presence: true, uniqueness: true
  has_one :power
end
