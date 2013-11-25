class Procedure < ActiveRecord::Base
  has_many :offering
  has_many :company, :through => :offering
  belongs_to :category
end
