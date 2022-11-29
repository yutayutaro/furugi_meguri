class ShopPhoto < ApplicationRecord
    has_one_attached :image
    belongs_to :shop
    validates :image, presence: true
    validates :introduction, presence: true
end
