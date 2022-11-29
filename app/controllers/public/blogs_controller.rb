class Public::BlogsController < ApplicationController
    def index
        @bookmarks =Bookmark.where(customer_id: current_customer.id)
        @blogs = Blog.where(shop_id: @bookmarks.pluck(:shop_id)).page(params[:page])
    end
    def show
        @blog = Blog.find(params[:id])
    end
end
