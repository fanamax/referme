class Referral < ActiveRecord::Base
  belongs_to :user
  belongs_to :business
end