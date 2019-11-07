class Heroine < ApplicationRecord
    belongs_to :power

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :super_name, presence: true
end
