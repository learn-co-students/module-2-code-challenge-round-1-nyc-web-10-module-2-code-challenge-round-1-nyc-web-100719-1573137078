class Heroine < ApplicationRecord
    belongs_to :power
    
    validates :super_name, uniqueness: true

    def self.search(search_term)
        @power = Power.where('name LIKE ?', "%#{search_term}%")
        if @power.empty?
            nil
        else    
            @heroines = Heroine.where(power_id: @power.first.id)
        end
    end
end
