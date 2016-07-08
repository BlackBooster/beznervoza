class User < ActiveRecord::Base
  GENDER_TYPES = [['Мужской', false], ['Женский', true]]
  validates_inclusion_of :is_female, in: [false, true]
  validates :email, format: { without: /\b[A-Z0-9._%a-z\-]+@mail\.ru\z/,
                              message: "Извините, регистрация через mail.ru недоступна, попробуйте другой ящик." }
  validates :password, presence: true, confirmation: true, length: { minimum: 6 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :country
  belongs_to :region
  belongs_to :city
end
