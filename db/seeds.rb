User.create!([
  {username: "Turtle person"},
  {username: "Axolotl"}
])
Book.create!([
  {title: "Fall 2027", author: "Nathaniel", price: "0.0", published_date: "2027-08-23"},
  {title: "Fall 2026", author: nil, price: nil, published_date: nil},
  {title: "Fall 2027", author: nil, price: nil, published_date: nil}
])
UserBook.create!([
  {user_id: 2, book_id: 2}
])
