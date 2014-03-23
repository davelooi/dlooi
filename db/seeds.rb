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
