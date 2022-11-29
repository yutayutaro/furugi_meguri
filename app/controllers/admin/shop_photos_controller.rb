class Admin::ShopPhotosController < ApplicationController
 before_action :authenticate_admin!
 def show
  @shop_photo = ShopPhoto.find(params[:id])         
 end
 def destroy
  shop_photo = ShopPhoto.find(params[:id])
  shop_photo.destroy
  redirect_to admin_root_path
 end
end
