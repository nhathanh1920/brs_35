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

Book.create! name: "book 1", description: "", image: "user/book1",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "1"
Book.create! name: "book 1", description: "", image: "user/book1",
  publish_date: "2015-10-10", author: "abc" , page: "100", rating: "3.5",
  category_id: "1"
Book.create! name: "book 1", description: "", image: "user/book1",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "1"
Book.create! name: "book 1", description: "", image: "user/book1",
  publish_date: "2015-10-10", author: "abc" , page: "100", rating: "3.5",
  category_id: "1"
Book.create! name: "book 2", description: "", image: "user/book2",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "2"
Book.create! name: "book 2", description: "", image: "user/book2",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "2"
Book.create! name: "book 2", description: "", image: "user/book2",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "2"
Book.create! name: "book 2", description: "", image: "user/book2",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "2"
Book.create! name: "book 3", description: "", image: "user/book3",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "3"
Book.create! name: "book 3", description: "", image: "user/book3",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "3"
Book.create! name: "book 3", description: "", image: "user/book3",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "3"
Book.create! name: "book 3", description: "", image: "user/book3",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "3"
Book.create! name: "book 4", description: "", image: "user/book4",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "4"
