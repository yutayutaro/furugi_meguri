class MapsController < ApplicationController
    def _google_map
        @maps = Map.all
        @map = Map.new
    end
       def create
        map = Map.new(map_params)
        if map.save
            if current_shop.present?
            redirect_to shop_root_path
            else
            redirect_to  root_path
             end
        else
             if current_shop.present?
            redirect_to shop_root_path
            else
            redirect_to root_path
             end
        end
    end

    def destroy
        map = Map.find(params[:id])
        map.destroy
        redirect_to action: :index
    end

    private
    def map_params
    params.require(:map).permit(:address, :latitude, :longitude)
    end
end
