class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :prefecture
  has_many :cases
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
  has_many :rooms
end
