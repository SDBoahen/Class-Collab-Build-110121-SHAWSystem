class User < ApplicationRecord
    # Association Macros
    ## 🌟 User  -<  Alert  -<  AlertDamages   >- DamageTypes
    
    has_secure_password

    
    def custom_instance_method
        self.alerts
    end
    

end

