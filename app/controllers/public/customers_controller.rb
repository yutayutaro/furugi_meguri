class Public::CustomersController < ApplicationController
     before_action :authenticate_customer!, except: [:show]
     def show
     end
     def edit
     @customer=current_customer
     end
     def update
     current_customer.update(customer_params)
     redirect_to customers_mypage_path
     end
     def customer_params
     params.require(:customer).permit(:nickname, :email)
     end
end
