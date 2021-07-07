class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  # deviseに関する記述
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # バリデーションに関する記述
  validates :name,  presence: true, length: {maximum: 10}, uniqueness: true
  validates :email, presence: true, uniqueness: true

  # リレーションに関する記述
  has_many :rooms
  has_many :reservations, dependent: :destroy

  # アイコンに関する記述
  mount_uploader :icon, IconUploader
end
