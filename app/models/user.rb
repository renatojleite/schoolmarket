class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sales,
           dependent: :destroy,
           inverse_of: :seller,
           class_name: "Offer",
           foreign_key: "seller_id"
  has_many :purchases,
           inverse_of: :buyer,
           class_name: "Offer",
           foreign_key: "buyer_id"
end
