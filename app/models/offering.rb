class Offering < ActiveRecord::Base
  belongs_to :company
  belongs_to :procedure
end
