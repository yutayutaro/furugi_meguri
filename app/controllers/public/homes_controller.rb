class Public::HomesController < ApplicationController
 def top
        @maps = Map.all
        @map = Map.new
        @all_cafe_position = Shop.all.pluck(:latitude, :longitude).to_json
        @shops = Shop.page(params[:page]).per(5)
  if customer_signed_in? 
    @bookmarks =Bookmark.where(customer_id: current_customer.id).includes(:shop).page(params[:bookmarks_page]).per(5)
    @blog = Blog.where(shop_id: @bookmarks.pluck(:shop_id)).page(params[:blog_page]).per(5)
    @shop_photos = ShopPhoto.where(shop_id: @bookmarks.pluck(:shop_id)).page(params[:shop_photos_page]).per(5)
    @shops = Shop.page(params[:page]).per(5)
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