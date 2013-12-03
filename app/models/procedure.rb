class Procedure < ActiveRecord::Base
  has_many :offerings
  has_many :companies, :through => :offering
  belongs_to :category
end
