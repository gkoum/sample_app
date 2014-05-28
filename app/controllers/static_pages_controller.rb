class StaticPagesController < ApplicationController
  def home
  	if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end
  def about

      @micropost  = User.last.microposts.build
      @feed_items = User.last.feed.paginate(page: params[:page])

  end
  def contact
  end
end
