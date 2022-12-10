class Admin::ShopsController < ApplicationController
          before_action :authenticate_admin!
          def show
          @shop = Shop.find(params[:id])
          @shop_photos = ShopPhoto.where(shop_id: @shop.id).page(params[:page])
          @blogs = Blog.where(shop_id: @shop.id).page(params[:page])
          end
          def unsubscribe
          @shop = Shop.find(params[:id])
          end
          def withdraw
          @shop = Shop.find(params[:id])
          @shop.update(is_deleted: true)
          redirect_to admin_root_path
         end
end