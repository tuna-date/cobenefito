class User < ApplicationRecord
  has_many :spaces_users
  has_many :spaces, through: :spaces_users
  has_many :claim_point_requests
  has_many :coupons
  has_many :coupon_transactions
end