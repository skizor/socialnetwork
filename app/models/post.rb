class Post < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum:140 } #rule, that doesn't allow post to be more than 140 symbols
  default_scope -> {order(created_at: desc)} #newest tweets
end
