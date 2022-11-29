class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!
  def show
    @customer = Customer.find(params[:id])
    @reviews = Review.where(customer_id: @customer.id).page(params[:page])
    @bookmarks = Bookmark.where(customer_id: @customer.id).page(params[:page])
  end
  def update
  end
end
