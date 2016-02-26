
def create_users
  User.create(first_name: "Miriam",
              last_name: "Moser",
              email: "miriam@example.com")
  puts "creating user"
end

def create_blogposts
  user = User.first

  20.times do |i|
    Blogpost.create(title: Faker::Lorem.word,
                    body: Faker::Lorem.paragraph(2),
                    user: user)
    puts "creating blogpost ##{i + 1}"
  end
end

create_users
create_blogposts