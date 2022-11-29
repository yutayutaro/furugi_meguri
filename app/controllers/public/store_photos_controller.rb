class Public::StorePhotosController < ApplicationController
    def show
        @store_photo = ShopPhoto.find(params[:id])
    end
end
