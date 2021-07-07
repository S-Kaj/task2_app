class Room < ApplicationRecord
    mount_uploader :image, ImageUploader

    # バリデーションに関する記述
    validates :roomname,  presence: true, length: {maximum: 50}, uniqueness: true
    validates :roomintroduction, presence: true, length: {maximum: 200}
    validates :roomfee, presence: true, numericality: true
    validates :roomaddress, presence: true, length: {maximum: 100}
    validates :image, presence: true

    # リレーションに関する記述
    belongs_to :user
    has_many :reservations
end
