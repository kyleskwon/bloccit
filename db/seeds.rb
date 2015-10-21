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
    Post.find_or_create_by(
      title: "Blue's clues",
      body: "She's a clueless dog"
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
    Comment.find_or_create_by(
      post: posts.sample,
      body: "She's a sweetheart"
      )
 puts "#{Comment.count}"


 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
