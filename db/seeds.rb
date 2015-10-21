include RandomData

 # Create Posts
 50.times do

   Post.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all

 puts "#{Post.count}"
    post = Post.find_or_create_by(
      title: "My unique title",
      body: "My unique body for a post"
      )
 puts "#{Post.count}"

 # Create Comments

 100.times do
   Comment.create!(

     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 puts "#{Comment.count}"
    comment = Comment.find_or_create_by(
      post: post,
      body: "My unique body for a comment"
      )
 puts "#{Comment.count}"


 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
