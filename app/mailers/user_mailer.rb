class UserMailer < ApplicationMailer
  
  default from: 'pimpmypiggybank@gmail.com'
 
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Piggy Bank')
  end
  
end
