# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ivan = User.create( name: 'Ivan', email: 'ivan@dot.com')
petr = User.create( name: 'Petr', email: 'petr@dot.com', moderator: true)
sidor = User.create( name: 'Sidor', email: 'sidor@dot.com', creator: true)

firstPost = Post.create( title: 'First post', body: 'This is first post in blog', user: sidor)

Comment.create( body: 'hi', user: ivan, post: firstPost)

Mark.create( user: petr, post: firstPost, grade: 5)
