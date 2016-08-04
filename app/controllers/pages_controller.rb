class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    #grab the username from the URL as :id
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      #redirect to 404 error
      redirect_to root_path, :notice => 'user not found!'
    end
  end

  def explore
  end
end
