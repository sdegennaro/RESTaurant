class Table < ActiveRecord::Base
  belongs_to :waitstaff
  has_many :food_orders
  has_many :food_items, through: :food_orders
  validates :table_number, uniqueness: true

  #  attr_reader :party_size, :table_number
  

end
