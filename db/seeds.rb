AdminUser.create!([
  {email: "davlooi@hotmail.com", password: "password"}
])
Industry.create!([
  {name: "ISP", description: "Internet Service Provider"},
  {name: "Telco", description: "Mobile Telecommunication Provider"}
])

# User
dlooi = User.create(uid: "dlooi", name: "Looi David", email: "email@address.com", url: "dlooi.herokuapp.com", dob: "1982-10-31", gender: "Male", address: "somewhere\r\nover the rainbow")
slseow = User.create(uid: "slseow", name: "Seow Suet Ling", email: "email@address.com", url: "dlooi.herokuapp.com", dob: "2009-03-03", gender: "Female", address: "")

# Company
nsn = Company.create(name: "Nokia Solutions and Networks")
fs = Company.create(name: "f-Secure")

# User Professional Summary
dlooi.create_user_summary(title: "Software Development Engineer", company: nsn, exp: 9)
slseow.create_user_summary(title: "Product Owner", company: fs, exp: 9)
