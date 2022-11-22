class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #UserモデルはBookモデルと1対Nの関係性で記載
  has_many :books, dependent: :destroy

  has_one_attached :profile_image

end