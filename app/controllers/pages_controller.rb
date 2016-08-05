class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    #grab the username from the URL as :id

      @username = params[:id]

      #redirect to 404 error


  end

  def explore
  end
end
