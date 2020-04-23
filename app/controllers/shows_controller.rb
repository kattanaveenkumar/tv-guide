class ShowsController < ApplicationController
  def index
  	if params[:channel_id].present?
  	  @shows = Show.where(channel_id: params[:channel_id])
  	else
  		@shows = Show.all
  	end  
  end

  def search
   	@shows = Show.search(params[:q])
    NotificationMailer.send_notification.deliver_now!
		respond_to do |format|
			format.html {render 'index'}
      format.js 
    end  
  end

  def add_to_favourites
  	Favourite.create(show_id: params[:show_id])
  	redirect_to root_path
  end
end
