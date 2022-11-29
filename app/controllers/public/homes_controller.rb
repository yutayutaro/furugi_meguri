class Public::HomesController < ApplicationController
    def top
        @maps = Map.all
        @map = Map.new
          if customer_signed_in? 
        @bookmarks =Bookmark.where(customer_id: current_customer.id).page(params[:page])
        @blog = Blog.where(shop_id: @bookmarks.pluck(:shop_id)).page(params[:page])
    end
    end
    def about
    end
    def unsubscribe
    @customer = Customer.find(params[:id])
    end
    
    def withdraw
    @customer = Customer.find(params[:id])
    @customer.update(is_deleted: true)
    reset_session
     redirect_to root_path
    end
end
