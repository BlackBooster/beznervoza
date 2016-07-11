class Region < ActiveRecord::Base
  has_many :users
  has_many :cities
  belongs_to :country
end
