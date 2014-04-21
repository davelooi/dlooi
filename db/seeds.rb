

# Profiles
dlooi = Profile.create(uid: "dlooi", name: "Looi David", email: "email@address.com", url: "dlooi.herokuapp.com", dob: "1982-10-31", gender: "Male", address: "somewhere\r\nover the rainbow")
slseow = Profile.create(uid: "slseow", name: "Seow Suet Ling", email: "email@address.com", url: "dlooi.herokuapp.com", dob: "2009-03-03", gender: "Female", address: "")

# Companies
nsn = Company.create(name: "Nokia Solutions and Networks")
fs = Company.create(name: "f-Secure")

# Profile summary
dlooi.create_user_summary(title: "Software Development Engineer", company: nsn, exp: 9)
slseow.create_user_summary(title: "Product Owner", company: fs, exp: 9)

# Education Institutes
unim = Institute.create(name: "University of Nottingham", location: "Malaysia")
ic = Institute.create(name: "Informatics College", location: "Malaysia")
sc = Institute.create(name: "Sunway College", location: "Malaysia")

# Educations
dlooi.educations.create(title: "Bachelor's Degree in Electronic and Communications Engineering", major: "Electronic and Communications", institute: unim, grade: "2nd class", graduate: "2006-01-01")
dlooi.educations.create(title: "Advanced Diploma of Computer Engineering", major: "Computer", institute: ic, grade: "Distinction", graduate: "2002-08-01")
dlooi.educations.create(title: "International Diploma in Computer Studies", major: "E-Commerce", institute: sc, grade: "Pass", graduate: "2002-04-01")
dlooi.educations.create(title: "Diploma of Computer Engineering", major: "Computer", institute: ic, grade: "Distinction", graduate: "2000-12-01")

# Language
dlooi.languages.create(name: "Chinese", spoken: "Excellent", written: "Unskilled")
dlooi.languages.create(name: "English", spoken: "Excellent", written: "Excellent")
dlooi.languages.create(name: "Malay", spoken: "Good", written: "Excellent")

s1 = SkillCategory.create(name: "Programming Languages")
s2 = SkillCategory.create(name: "Scripting Languages")
s3 = SkillCategory.create(name: "Frameworks")
s4 = SkillCategory.create(name: "Network Protocols")
s5 = SkillCategory.create(name: "Platforms")
s6 = SkillCategory.create(name: "Security")
s7 = SkillCategory.create(name: "Servers")
s8 = SkillCategory.create(name: "Databases")
s9 = SkillCategory.create(name: "Virtualizations")
s0 = SkillCategory.create(name: "SCM")

dlooi.skills.create(name: "C, Delphi, VB, Java", level: "Expert", skill_category: s1)
dlooi.skills.create(name: "Perl, Ruby, SQL, Regex, Shell Script", level: "", skill_category: s2)
dlooi.skills.create(name: "Ruby on Rails, Bootstrap, AJAX", level: "", skill_category: s3)
dlooi.skills.create(name: "HTTP, TCP/IP, ISO8583, FTP, TFTP, SSH, DNS", level: "", skill_category: s4)
dlooi.skills.create(name: "Windows, Linux, Android, Omron PLC, Ingenico Unicapt, Ingenico iCT,  VerixV", level: "", skill_category: s5)
dlooi.skills.create(name: "DES, 3DES, AES", level: "", skill_category: s6)
dlooi.skills.create(name: "SUSE Linux Enterprise, Apache, nginx", level: "", skill_category: s7)
dlooi.skills.create(name: "MySQL, PostgreSQL, LDAP", level: "", skill_category: s8)
dlooi.skills.create(name: "VMware vSphere, VMware Workstation, VirtualBox", level: "", skill_category: s9)
dlooi.skills.create(name: "SVN, git", level: "", skill_category: s0)

# Job
dlooi.jobs.create(company: nsn, industry: "Telecommunications", position: "Software Development Engineer", start: "2012-07-16", end: "2014-06-27", desc: "Develop LDAP server in C\r\nDevelop product testcases in Perl\r\nDevelop automated test tools in RoR\r\n\r\n")

#### CHEATS ###

git = Product.create(name: "git", desc: "Distributed Revision Control", tag: "git")
heroku = Product.create(name: "heroku", desc: "Cloud Application Platform", tag: "heroku")
ror = Product.create(name: "Ruby on Rails", desc: "Open Source Web Application Framework", tag: "rails")

git.cheats.create(cheat: "git commit -m \"Commit Message\"", desc: "Commit changes into Repository", note: "Changes need to be added to index before commit")
heroku.cheats.create(cheat: "git push heroku master", desc: "Deploy App to Heroku", note: "")
ror.cheats.create(cheat: "rails s", desc: "Start rails bundled WEBrick server", note: "There are other alternative servers")
git.cheats.create(cheat: "git add .", desc: "Add Changes to the Index to be Commited", note: "")
heroku.cheats.create(cheat: "heroku logs", desc: "Viewing heroku logs", note: "")
heroku.cheats.create(cheat: "heroku pg:reset DATABASE", desc: "Reset the DATABASE", note: "This will destroy all existing tables and data.")
ror.cheats.create(cheat: "rails generate model Ball", desc: "Generate a new data model named Ball", note: "Model name should be singular.")
ror.cheats.create(cheat: "rails generate controller Balls", desc: "Generate a new controller named Ball", note: "Controller name should be plural.")
ror.cheats.create(cheat: "rails c", desc: "Start Rails console", note: "")
git.cheats.create(cheat: "git clone <target repo>", desc: "Clone a repository", note: "")
git.cheats.create(cheat: "git status", desc: "Check all the changed files", note: "")
git.cheats.create(cheat: "git push <remote repo> <branch>", desc: "Publish changes to remote branch", note: "eg. \"git push github master\"")


## unused
Industry.create!([
  {name: "ISP", description: "Internet Service Provider"},
  {name: "Telco", description: "Mobile Telecommunication Provider"}
])

