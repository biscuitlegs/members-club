class Member < ApplicationRecord
  has_many :posts

  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 12 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
