class Review < ApplicationRecord
      has_one_attached :image
    belongs_to :customer
    belongs_to :shop
    validates :title, presence: true
    validates :introduction, presence: true
    validates :shop_id, presence: true
end
