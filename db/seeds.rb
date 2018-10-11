##
# Clear DB

users_h = 10.times.map do{
  name: FFaker::Internet.user_name[0..25],
  email: FFaker::Internet.safe_email
}
end
users = User.create! users_h
users.first(4).each { |u| u.update creator: true}
users.first(2).each { |u| u.update moderator: true}

creators = User.where(creator: true)
posts_h = 25.times.map do {
  title: FFaker::HipsterIpsum.paragraph,
  body: FFaker::HipsterIpsum.paragraphs,
  user: creators.sample
}
end
posts = Post.create! posts_h

comments_h = 250.times.map do {
  body: FFaker::HipsterIpsum.paragraphs,
  user: users.sample,
  post: posts.sample
}
end
Comment.create! comments_h
