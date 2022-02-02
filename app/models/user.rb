class User < ApplicationRecord
    # Association Macros
    ## 🌟 User  -<  Alert  -<  AlertDamages   >- DamageTypes
    has_many :alerts


    

    has_secure_password


    def custom_instance_method
        self.alerts
    end
    

end







    # <-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-<-
    ## 🌟 User  -<  Alert  -<  AlertDamages   >- DamageTypes

    # has_many :alerts

    # Locations (ZipCode) >- Providence >- Brough >- Town >- ...
    # User -< Outfits -< ArticleOfClothing
    ## u.out.a_o_c
    # User -< Outfits >- ArticleOfClothing
    ## u.a_o_c

