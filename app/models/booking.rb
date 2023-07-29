class Booking < ApplicationRecord
    
    validates :number_tickets, numericality: { only_integer: true, 
                                                in: 1..4 }

    
    has_and_belongs_to_many :passengers
    belongs_to :flight 

    accepts_nested_attributes_for :passengers, reject_if: :all_blank
end
