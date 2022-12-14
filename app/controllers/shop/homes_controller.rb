class Shop::HomesController < ApplicationController
    before_action :authenticate_shop!
    def top
      @shop = current_shop
      @maps = Map.all
      @map = Map.new
      @bookmarks = Bookmark.where(shop_id: current_shop.id)
      @shop_photos = ShopPhoto.where(shop_id: current_shop.id).page(params[:shop_photo_page]).per(5)
      @blogs = Blog.where(shop_id: current_shop.id).page(params[:blog_page]).per(5)
      @reviews = Review.where(shop_id: current_shop.id).page(params[:review_page]).per(5)
    end
    def edit
    end
    def update
    end
    def unsubscribe
    @shop = Shop.find(params[:id])
    end
    
    def withdraw
    @shop = Shop.find(params[:id])
    @shop.update(is_deleted: true)
    reset_session
    redirect_to shop_root_path
    end    
end
