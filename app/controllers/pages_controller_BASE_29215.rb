class PagesController < ApplicationController
  def dashboard
  end

  def login
  end

  def contact
  end

  def about
  end

  def register
  end
<<<<<<< Temporary merge branch 1
  
  def product_view
=======

  def login_attempt
    username = params[:username_or_email]
    password = params[:password]
    @user = Customer.find_by(email_id: username) if username.include? "@"
    @user = Customer.find_by(first_name: username) unless username.include? "@"
    if password == @user.password
      session[:user_id]= @user.id
      redirect_to pages_dashboard_path
    else
      redirect_to pages_login_path
    end
>>>>>>> Temporary merge branch 2
  end
  
  def logout
    session[:user_id]=nil
    redirect_to pages_dashboard_path
  end
end
