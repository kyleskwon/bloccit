include RandomData
#Create Posts

50.times do
  Advertisement.create!(
  title: RandomData.random_sentence,
  copy: RandomData.random_copy,
  price: RandomData.random_price
  )
end

advertisements = Advertisement.all


50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
    )
end

posts = Post.all

#Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
    )
end

puts "Seed finished"
puts "#{Advertisement.count} advertisements created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
