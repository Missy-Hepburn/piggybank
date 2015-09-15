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
  
end
