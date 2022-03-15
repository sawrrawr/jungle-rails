class User < ActiveRecord::Base

  has_secure_password

  authenticate_with_credentials(email, password) do
    @user = User.where(email: email, password: password)
    if user ? user : nil
  end

end
