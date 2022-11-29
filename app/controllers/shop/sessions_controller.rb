# frozen_string_literal: true

class Shop::SessionsController < Devise::SessionsController
  before_action :shop_state, only: [:create]
  def shop_state
  @shop = Shop.find_by(email: params[:shop][:email])
  return if !@shop
  if @shop.valid_password?(params[:shop][:password])
  end
  end
  def reject_inactive_user
    @shop = Shop.find_by(name: params[:shop][:name])
    if @shop
      if @shop.valid_password?(params[:shop][:password]) && !@shop.is_valid
        redirect_to new_shop_session_path
      end
    end
  end
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
   def create
     # byebug
     shop = Shop.find_by(email: params.require(:shop).permit(:email)[:email])
     if shop.is_deleted == false
       super
     else
       redirect_to root_path
     end
   end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
