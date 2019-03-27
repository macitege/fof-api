# frozen_string_literal: true

class UsersController < ProtectedController
  skip_before_action :authenticate, only: %i[signup signin]

  # POST '/sign-up'
  # TODO: SIGN UP DOES NOT GIVE EXPECTED ERROR IF USERNAME IS NOT UNIQUE
  def signup
    user = User.create(user_creds)
    if user.valid?
      render json: user, status: :created
    else
      render json: user.errors, status: :bad_request
    end
  end

  # POST '/sign-in'
  def signin
    creds = user_creds
    if creds[:email] == '' && creds[:username]
      user_email = User.find_by(username: creds[:username])
      creds[:email] = user_email.email
    end
    if (user = User.authenticate(creds[:email], creds[:password]))
      render json: user, serializer: UserLoginSerializer, root: 'user'
    else
      head :unauthorized
    end
  end

  # DELETE '/sign-out'
  def signout
    current_user.logout
    head :no_content
  end

  # PATCH '/change-password/:id'
  def changepw
    # if the the old password authenticates,
    # the new one is not blank,
    # and the model saves
    # then 204
    # else 400
    if current_user.authenticate(pw_creds[:old]) &&
       !(current_user.password = pw_creds[:new]).blank? &&
       current_user.save
      head :no_content
    else
      head :bad_request
    end
  end

  private

  def user_creds
    params.require(:credentials)
          .permit(:email, :password, :username, :password_confirmation)
  end

  def pw_creds
    params.require(:passwords)
          .permit(:old, :new)
  end
end
