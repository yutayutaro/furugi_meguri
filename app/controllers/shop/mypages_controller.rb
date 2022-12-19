class Shop::MypagesController < ApplicationController
    before_action :authenticate_shop!
    def new
    end
    def index
    end
    def show
    end
    def edit
        @shop = current_shop
    end
    def update
        current_shop.update(shop_params)
        redirect_to shop_root_path
    end
    def shop_params
        params.require(:shop).permit(:name,:email,:introduction,:link)
    end
end
