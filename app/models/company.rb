class Company < ActiveRecord::Base
  has_many :locations
  has_many :offerings
  has_many :procedures, :through => :offerings
end
