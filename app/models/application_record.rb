class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end








# SUPER MVP
##  🌟 User -< Alerts 
####  User:Auth




# MVP
##  🌟 User  -< UserLocation/UserLivesHere/UserIsHere/UserCurrentLocation >- Location >- ...CAN CONTINUE...

##  🌟 User  -<  Alert  -<  AlertDamages   >- DamageTypes
##  🌟           Alert  -<  AlertLocation  >- Location >- ...CAN CONTINUE...


#### Locations
# Location (ZipCodes/Neighborhood/Township/Villiages/provinices)  >- ...
#   ...  >- County >- Town >- City >- State >- Country >- Planet >- SolarSystem >- Galaxies >- ...
## !! 👀 !! THERE ARE JOINS BETWEEN EVERY SINGLE FORM OF RELATIONAL-LOCATIONS

#< NYC >< USA >
#< DC >< USA >
#< Indonesia >



#### MODELS


## User
####  User:Auth 🌟
####  Attributes
# t.string :name
# t.string :username
# t.string :email
# t.string :current_location
# t.string :password_digest
#### :password *  ->  salted + hashed  ->  password_digest
#### 123, password, abc ->->->->->->->->->->->-> XBJ7-JCKDB JCDS-NJ4K-KS6J-N5JH-D737


# -x- t.integer :age
#### age users 
# -x- t.string :hometown 

