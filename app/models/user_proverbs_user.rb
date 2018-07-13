class UserProverbsUser < ApplicationRecord
  belongs_to :user
  belongs_to :proverb

  validates :user_id, presence: true
  validates :proverb_id, presence: true
end
