User.create! name: "Quyen Nguyen", email: "quyenguyengoc911@gmail.com",
  password: "123456", password_confirmation: "123456", role: 0, image: "none"
User.create! name: "Hanh Tran", email: "myhanhqt96@gmail.com",
  password: "123456", password_confirmation: "123456", role: 0, image: "none"
User.create! name: "Nhat Nguyen", email: "nguyenhoangnhat07@gmail.com",
  password: "123456", password_confirmation: "123456", role: 0, image: "none"
User.create! name: "Mod", email: "mod@gmail.com",
  password: "123456", password_confirmation: "123456", role: 1, image: "none"
User.create! name: "User", email: "user@gmail.com",
  password: "123456", password_confirmation: "123456", role: 2, image: "none"

10.times do |n|
  name  = Faker::Name.name
  Category.create!(name: name)
end
