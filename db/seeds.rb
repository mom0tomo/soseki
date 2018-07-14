5.times do
  User.create!(name: Faker::Name.name)
end

# リレーションシップ
users = User.all
user  = users.first
proverbs = Proverb.all
selected_proverbs = proverbs[1..5]
selected_proverbs.each { |proverb| user.like(proverb) }
