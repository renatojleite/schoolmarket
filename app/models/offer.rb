class Offer < ApplicationRecord
  belongs_to :buyer, class_name: "User", foreign_key: "buyer_id"
  belongs_to :seller, class_name: "User", foreign_key: "seller_id"
  enum category: %i[first_grade second_grade third_grade fourth_grade fifth_grade
                    sixth_grade seventh_grade eight_grade hoodies pants t_shirts shorts]
  validates :category, presence: true
  validates :buyer_must_be_different_from_seller

  private

  def buyer_must_be_different_from_seller
    if buyer == seller
      errors.add(:buyer, "must be different from seller")
    end
  end
end
