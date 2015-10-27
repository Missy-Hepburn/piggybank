class StaticPagesController < ApplicationController
  def home
    render :layout => false
  end

  def whataboutit
  end

  def blog
  end
  
  def expenses
  end
  
  def budget
    @usersbudgets=Budget.where(:user_id =>current_user.id)
    @userstransactions=Transaction.where(:user_id =>current_user.id)
    @icons = Icon.all
  end
  
end
