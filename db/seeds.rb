# 🌟 DATABASE DIAGRAM
##  User  -< []  Alert  -<  [] AlertDamages []  >-  DamageTypes




AlertDamage.destroy_all
Alert.destroy_all
DamageType.destroy_all
User.destroy_all
#  !!  We Destroy_all In REVERSE ORDER
##  Dependent Models FIRST


# 🖱😉✨


#  !!  We Create In Forward ORDER
##  Independent Models FIRST




puts "Seeding Users 🌱✨ "

shannon = User.create(
  name: "Shannon",
  username: "Shan",
  email: "Shannon@Woobly.net",
  current_location: "Austin, TX",
  password_digest: "123",
)

sam = User.create(
  name: "Sam",
  username: "Sam",
  email: "Sam@Woobly.net",
  current_location: "Bronx, NY",
  password: "123",
)



puts "Seeding DamageTypes 🌱✨ "

building_damage = DamageType.create( name: "Building Damage" ) 

weather_damage = DamageType.create( name: "Weather Damage" ) 




puts "Seeding Alerts 🌱✨ "

a1 = Alert.create(
  title: "BeastBoy vs Slade on 125TH!!!! 👀",
  description: "BeastBoy is Sick and Tired of Slade",
  alert_time: Time.now,
  user: sam
  # user_id: sam.id
) 

a2 = Alert.create(
  title: "BeastBoy vs Slade on 125TH!!!! PART2 👀",
  description: "BeastBoy is Sick and Tired of Slade....AGAIN",
  alert_time: Time.now,
  user: sam
  # user_id: sam.id
) 




puts "Seeding AlertDamages 🌱✨ "

AlertDamage.create(  
  level: "critical",
  alert_id: a1.id,
  damage_type_id: building_damage.id
)
# building_damage = DamageType.create( level: "minor" ) 

# A -< AD >- DT

AlertDamage.create(  
  level: "minor",
  alert_id: a2.id,
  damage_type_id: building_damage.id
)
# building_damage = DamageType.create( level: "minor" ) 