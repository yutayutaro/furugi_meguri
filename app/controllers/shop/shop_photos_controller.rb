class Shop::ShopPhotosController < ApplicationController
    def new 
        @photo =ShopPhoto.new
    end
    def create
        @photo = ShopPhoto.new(shop_photo_params)
        @photo.shop_id = current_shop.id
       if @photo.save
        redirect_to shop_shop_photo_path(@photo.id)
    else
        render :new
    end
    end
    def index
        @photo = ShopPhoto.page(params[:page])
    end
    def show
        @photo = ShopPhoto.find(params[:id])
    end
    def edit
        @photo = ShopPhoto.find(params[:id])
    end
    def destroy
        photo = ShopPhoto.find(params[:id])
        photo.destroy
        redirect_to shop_shop_photos_path
    end
    def update
        photo = ShopPhoto.find(params[:id])
        photo.update(shop_photo_params)
        redirect_to shop_shop_photo_path(photo.id)
    end
        
    private
    def shop_photo_params
    params.require(:shop_photo).permit(:introduction,:image)
    end
      
end
