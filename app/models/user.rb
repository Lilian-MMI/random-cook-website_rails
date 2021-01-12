class User < ApplicationRecord
    has_many:favorite

    def show
        @user = User.find(params[:id])
    end

    def self.authenticate(email, password)
        user = find_by(email: email, password: password)
        return user 
    end
    
    def self.authenticate_with_salt(id, cookie_salt)
        user = find_by_id(id)
        (user && user.salt == cookie_salt) ? user : nil
    end
    
end
