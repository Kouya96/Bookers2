class Book < ApplicationRecord

  belongs_to :user

  #titleカラム空欄なし
  validates :title, presence: true

  #bodyカラム 空欄なし200文字以下
  validates :body, length: { maximum: 200 }, presence: true


end