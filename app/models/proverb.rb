class Proverb < ApplicationRecord
  has_many :user_proverbs_users,
           foreign_key: :user_id,
           dependent: :destroy
  has_many :users
end
