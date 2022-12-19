class Public::StoresController < ApplicationController
      before_action :authenticate_customer!, except: [:show,:update,:destroy]
    def index
        @bookmarks =Bookmark.where(customer_id: current_customer.id).page(params[:page]).per(5)
    end
    def show
        @store = Shop.find(params[:id])
        @store_photo = ShopPhoto.where(shop: @store.id).page(params[:page]).per(5)
        @blog = Blog.where(shop: @store.id).page(params[:page]).per(5)
        # @bookmarks = Bookmark.where(shop_id: current_customer.id) 
    end
    def update
    end
    def destroy
    end
end
