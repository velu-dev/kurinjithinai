Unit.create!([
  {unit_name: "gram/mili", short_name: "g"}
])
ProductCategory.create!([
  {cat_name: "milk", cat_code: "1", unit_id: 1},
  {cat_name: "frouts", cat_code: "2", unit_id: 1}
])
Role.create!([
  {role: "Admin", role_name: "AD", desc: "Admin user"}
])

Customer.create!([
  {full_name: "velu", profile_pic: nil, mobile_number: "1234567890", email_id: "velusamyvnp@gmail.com", password: "veluvelu"},
  {full_name: "mani", profile_pic: nil, mobile_number: "mm", email_id: "mani@mm.com", password: "mmmmmmmm"},
  {full_name: "mani", profile_pic: nil, mobile_number: "mm", email_id: "mani@mm.com", password: "mmmmmmmm"}
])
Product.create!([
  {product_name: "c", product_image1: "me.png", product_image2: nil, product_image3: nil, quantity: "100", min_quantity: "1", price: "100", discount: "10%", subscription_date: "12-02-2014", min_delivery_date: "5", product_category_id: 1},
  {product_name: "MIlk1", product_image1: "milk.jpg", product_image2: nil, product_image3: nil, quantity: "10", min_quantity: "1", price: "40", discount: "5", subscription_date: "12-02-2014", min_delivery_date: "5", product_category_id: 1},
  {product_name: "MIlk2", product_image1: "milk2.jpg", product_image2: nil, product_image3: nil, quantity: "10", min_quantity: "1", price: "100", discount: "10%", subscription_date: "12-02-2014", min_delivery_date: "5", product_category_id: 1},
  {product_name: "MIlk3", product_image1: "milk3.jpeg", product_image2: nil, product_image3: nil, quantity: "10", min_quantity: "1", price: "100", discount: "10%", subscription_date: "12-02-2014", min_delivery_date: "5", product_category_id: 1},
  {product_name: "b", product_image1: "right.png", product_image2: nil, product_image3: nil, quantity: "10", min_quantity: "1", price: "100", discount: "10%", subscription_date: "12-02-2014", min_delivery_date: "5", product_category_id: 2},
  {product_name: "a", product_image1: "Screenshot_from_2017-11-09_03-56-50.png", product_image2: nil, product_image3: nil, quantity: "100", min_quantity: "12", price: "100", discount: "10%", subscription_date: "12-02-2014", min_delivery_date: "5", product_category_id: 2},
  {product_name: "secon", product_image1: "my_photo.jpg", product_image2: nil, product_image3: nil, quantity: "10", min_quantity: "10", price: "100", discount: "5", subscription_date: "12-12-2017", min_delivery_date: "5", product_category_id: 2}
])

