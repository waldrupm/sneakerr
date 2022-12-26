class Cart < ApplicationRecord
  belongs_to :user
  has_many :line_items, dependent: :destroy
  has_many :sneakers, through: :line_items

  def total_price
    line_items.sum(&:total_price)
  end
end
