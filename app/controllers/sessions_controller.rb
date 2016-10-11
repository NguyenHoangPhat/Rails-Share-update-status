class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
<<<<<<< HEAD
       remember user
      redirect_to user
=======
      redirect_to user

>>>>>>> 13f75584ba87badf2fc722dda23f7741b6e93fc0
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
<<<<<<< HEAD
  
 def destroy
    log_out if logged_in?
=======

  
  def destroy
    log_out
>>>>>>> 13f75584ba87badf2fc722dda23f7741b6e93fc0
    redirect_to root_url
  end

end
