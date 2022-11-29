class Shop < ApplicationRecord
  has_many :blogs
  has_many :bookmarks, dependent: :destroy
  has_many :shop_photos
  has_many :reviews
  
  validates :name, presence: true
  
  def bookmarked_by?(customer)
    bookmarks.where(customer_id: customer).exists?
  end
  
  def self.search(keyword)
    unless keyword.blank?
      Shop.where(['name LIKE ?', "%#{keyword}%"])
    else
      Shop.all
    end
  end
   def self.looks(search, word)
    if search == "perfect_match"
      @shop = Shop.where("name LIKE?","#{word}")
    elsif search == "forward_match"
      @shop = Shop.where("name LIKE?","#{word}%")
    elsif search == "backward_match"
      @shop = Shop.where("name LIKE?","%#{word}")
    elsif search == "partial_match"
      @shop = Shop.where("name LIKE?","%#{word}%")
    else
      @shop = Shop.all
    end
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
