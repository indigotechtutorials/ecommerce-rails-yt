class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :products, through: :cart_items

  before_create :set_secret_id

  enum :status, ["pending", "complete"]

  private

  def set_secret_id
    self.secret_id = SecureRandom.uuid + DateTime.now.to_i.to_s
  end
end
