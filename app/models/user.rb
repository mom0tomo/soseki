class User < ApplicationRecord
  has_many :user_proverbs_users,
           foreign_key: :proverb_id,
           dependent: :destroy
  has_many :proverbs

  # いいね
  def like(proverb)
    user_proverbs_users.create(proverb_id: proverb.id)
  end

  # いいね取り消し
  def cancel_like(proverb)
    user_proverbs_users.find_by(proverb_id: proverb.id).destroy
  end
end