AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$10$D8izuHrsCvBqzJsd5G92Fudrth/X1ZmZAwGlgQu8kL.BRrIxo1rgK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: "2014-03-22 16:54:12", sign_in_count: 4, current_sign_in_at: "2014-03-23 15:22:41", last_sign_in_at: "2014-03-22 16:54:12", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
User.create!([
  {uid: "sling", name: "Seow Suet Ling", email: "email@address.com", url: "dlooi.herokuapp.com", dob: "2009-03-03", gender: "Female", address: ""},
  {uid: "dlooi", name: "Looi David", email: "email@address.com", url: "dlooi.herokuapp.com", dob: "1982-10-31", gender: "Male", address: "somewhere\r\nover the rainbow"}
])
UserSummary.create!([
  {title: "Software Development Engineer", company_id: 1, exp: 9, user_id: 1},
  {title: "Product Owner", company_id: 2, exp: 9, user_id: 2}
])
Company.create!([
  {name: "Nokia Solutions and Networks"},
  {name: "f-Secure"}
])
Industry.create!([
  {name: "ISP", description: "Internet Service Provider"},
  {name: "Telco", description: "Mobile Telecommunication Provider"}
])
