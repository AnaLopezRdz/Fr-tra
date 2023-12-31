class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, :email, :password, presence: true
  has_one_attached :photo
  has_many :recipes, dependent: :destroy
  has_one :fridge_list
  acts_as_favoritor
end
