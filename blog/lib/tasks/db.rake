namespace :db do
  desc "Fill some test data into DB"
  task fill_data: :environment do
    
    stmp = "user_#{rand(1..200)}"
    user1 = User.create( name: stmp, email: "#{stmp}@dot.com")
    
    stmp = "user_#{rand(1..200)}"
    moderator1 = User.create( name: stmp, email: "#{stmp}@dot.com", moderator: true)
    
    stmp = "user_#{rand(1..200)}"
    creator1 = User.create( name: stmp, email: "#{stmp}@dot.com", creator: true)
    
    firstPost = Post.create( title: "Post ##{rand(1..50)}", body: "#{rand(36**rand(50..250)).to_s(36)}", user: creator1)
    
    Comment.create( body: "#{rand(36**rand(10..50)).to_s(36)}", user: user1, post: firstPost)
    
    Mark.create( user: moderator1, post: firstPost, mark: rand(1..5), is_active: true) 
  end

end