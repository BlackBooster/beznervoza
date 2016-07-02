class User < ActiveRecord::Base
  GENDER_TYPES = [['Мужской', false], ['Женский', true]]
  validates_inclusion_of :is_female, in: [true, false]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :country
  belongs_to :region
  belongs_to :city
end
