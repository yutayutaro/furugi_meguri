class Public::BookmarksController < ApplicationController
     before_action :authenticate_customer!

  def create
    @shop = Shop.find(params[:store_id])
    bookmark = @shop.bookmarks.new(customer_id: current_customer.id)
    if bookmark.save
      redirect_to request.referer
    else
      redirect_to request.referer
    end
  end

  def destroy
    @shop = Shop.find(params[:store_id])
    bookmark = @shop.bookmarks.find_by(customer_id: current_customer.id)
    if bookmark.present?
        bookmark.destroy
        redirect_to request.referer
    else
        redirect_to request.referer
    end
  end
end
