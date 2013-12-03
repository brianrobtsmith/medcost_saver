class Procedure < ActiveRecord::Base
  has_many :offerings
  has_many :companies, :through => :offerings
  has_many :locations, :through => :companies
  belongs_to :category
end
