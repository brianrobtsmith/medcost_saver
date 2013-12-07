class Offering < ActiveRecord::Base
  belongs_to :company
  belongs_to :procedure
  has_many :locations, :through => :company

  # belongs_to :company is simply shorthand for:

  # def company
  #   return Company.find_by(id: company_id)
  # end
end
