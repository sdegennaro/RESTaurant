class Party < ActiveRecord::Base
  belongs_to :waitstaff
  has_many :customers

  #  attr_reader :party_size, :table_number
  def makeCustomers(size)
    unless size == 0
      Customer.create
      size - 1
    end
  end

end
