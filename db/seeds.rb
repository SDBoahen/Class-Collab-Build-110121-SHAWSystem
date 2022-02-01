User.destroy_all
#  !!  We Destroy_all In REVERSE ORDER
##  Dependent Models FIRST

# 🖱😉✨

#  !!  We Create In Forward ORDER
##  Independent Models FIRST



User.create(
  name: "Shannon",
  username: "Shan",
  email: "Shannon@Woobly.net",
  current_location: "Austin, TX",
  password_digest: "123",
)

User.create(
  name: "Sam",
  username: "Sam",
  email: "Sam@Woobly.net",
  current_location: "Bronx, NY",
  password: "123",
)

