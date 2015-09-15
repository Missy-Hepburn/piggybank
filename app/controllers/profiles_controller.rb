class ProfilesController < ApplicationController
  def show
    @usersbudgets=Budget.where(:user_id =>current_user.id)
    @usersupdates=Update.where(:user_id =>current_user.id)
    @userspictures=Picture.where(:user_id =>current_user.id)
    @usersicons=Icon.where(:user_id =>current_user.id)
    @usersmonthlyicons=Monthlyicon.where(:user_id =>current_user.id)
  end
end
