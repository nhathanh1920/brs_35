User.create! name: "Quyen Nguyen", email: "quyenguyengoc911@gmail.com",
  password: "123456", password_confirmation: "123456",
  role: 0, image: "avatar.jpg"
User.create! name: "Hanh Tran", email: "myhanhqt96@gmail.com",
  password: "123456", password_confirmation: "123456",
  role: 0, image: "avatar.jpg"
User.create! name: "Nhat Nguyen", email: "nguyenhoangnhat07@gmail.com",
  password: "123456", password_confirmation: "123456",
  role: 0, image: "avatar.jpg"
User.create! name: "Mod", email: "mod@gmail.com",
  password: "123456", password_confirmation: "123456",
  role: 1, image: "avatar.jpg"
User.create! name: "User", email: "user@gmail.com",
  password: "123456", password_confirmation: "123456",
  role: 2, image: "avatar.jpg"

Category.create!(name: "Animals and Pets")
Category.create!(name: "Business")
Category.create!(name: "Cooking, Food and Drink")
Category.create!(name: "Fiction")
Category.create!(name: "Gardening")
Category.create!(name: "History")
Category.create!(name: "Kids")
Category.create!(name: "Science and Nature")
Category.create!(name: "The Arts")
Category.create!(name: "Travel")
Category.create!(name: "Teens and YA")
Category.create!(name: "Poetry")

Book.create! name: "book 1", description: "", image: "user/book1",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "1"
Book.create! name: "book 2", description: "", image: "user/book1",
  publish_date: "2015-10-10", author: "abc" , page: "100", rating: "3.5",
  category_id: "1"
Book.create! name: "book 3", description: "", image: "user/book1",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "1"
Book.create! name: "book 4", description: "", image: "user/book1",
  publish_date: "2015-10-10", author: "abc" , page: "100", rating: "3.5",
  category_id: "1"
Book.create! name: "book 5", description: "", image: "user/book2",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "2"
Book.create! name: "book 6", description: "", image: "user/book2",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "2"
Book.create! name: "book 7", description: "", image: "user/book2",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "2"
Book.create! name: "book 8", description: "", image: "user/book2",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "2"
Book.create! name: "book 9", description: "", image: "user/book3",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "3"
Book.create! name: "book 10", description: "", image: "user/book3",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "3"
Book.create! name: "book 11", description: "", image: "user/book3",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "3"
Book.create! name: "book 12", description: "", image: "user/book3",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "3"
Book.create! name: "book 13", description: "", image: "user/book4",
  publish_date: "2015-10-10", author: "abc",  page: "100", rating: "3.5",
  category_id: "4"
