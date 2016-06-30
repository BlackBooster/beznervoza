class City < ActiveRecord::Base
  has_many :users
  belongs_to :region
end
