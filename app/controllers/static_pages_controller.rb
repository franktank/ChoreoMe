class StaticPagesController < ApplicationController
  def home
    @song = Song.new
  end

  def help
  end

  def about
  end

  def dashboard
  end
    
end
