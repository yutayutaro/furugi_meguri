class Admin::SearchesController < ApplicationController
    def search
    @range = params[:range]

    if @range == "Shop"
      @shops = Shop.looks(params[:search], params[:word])
    else
      @customers = Customer.looks(params[:search], params[:word])
    end
  end
end
