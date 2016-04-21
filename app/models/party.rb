class Party < ActiveRecord::Base
  belongs_to :waitstaff
  has_many :customers
end
