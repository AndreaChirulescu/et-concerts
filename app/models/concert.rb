class Concert < ActiveRecord::Base
  has_many :bands
  validates :bands, :presence => true
end
