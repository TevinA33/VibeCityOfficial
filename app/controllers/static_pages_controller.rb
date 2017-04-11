class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  
  def about
  end
   
  def membership
  end

  def miscellaneous
  end
  
  def mixers
  end
   
  def music
  end

  def reviews
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
  
  def speakers
  end
end
