class Company < ActiveRecord::Base
  has_many :location
  has_many :offering
  has_many :procedure, :through => :offering
end
