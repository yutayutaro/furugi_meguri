class Customer < ApplicationRecord
  has_many :reviews
  has_many :bookmarks  ,dependent: :destroy
  # フォローをした、されたの関係
has_many :relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
has_many :reverse_of_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy

# 一覧画面で使う
has_many :followings, through: :relationships, source: :followed
has_many :followers, through: :reverse_of_relationships, source: :follower
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   def self.looks(search, word)
    if search == "perfect_match"
      @customer = Customer.where("email LIKE?","#{word}")
    elsif search == "forward_match"
      @customer = Customer.where("email LIKE?","#{word}%")
    elsif search == "backward_match"
      @customer = Customer.where("email LIKE?","%#{word}")
    elsif search == "partial_match"
      @customer = Customer.where("email LIKE?","%#{word}%")
    else
      @customer = Customer.all
    end
  end
end
