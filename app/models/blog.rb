class Blog < ApplicationRecord
      has_one_attached :image
      belongs_to :shop
      validates :title, presence: true
      validates :introduction, presence: true
end
