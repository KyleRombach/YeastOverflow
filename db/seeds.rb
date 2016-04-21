10.times do |x|
  User.create(username: "user#{x}", email: "user#{x}@yahoo.com", password_hash: "753d87ew8172xg8e87#{x}")
  Question.create(title: "title#{x}", content: ("This is pretty cool" * 20), votes: rand(20), views: rand(100), user_id: rand(10) )
  Answer.create(content: ("This is pretty cool #{x}"), votes: rand(15), user_id: rand(10) )
  Response.create(content: ("This is pretty cool #{x}"), respondable_id: rand(10), respondable_type: ["Question", "Answer"].sample, user_id: rand(10))
end
