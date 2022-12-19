class Shop::ReviewsController < ApplicationController
      before_action :authenticate_shop!
      def index
            @reviews = current_shop.reviews.page(params[:id]).per(5)
      end
      def show
            @review = Review.find(params[:id])
      end
      def destroy
            review = Review.find(params[:id])
            review.destroy
            redirect_to shop_reviews_path
      end
end
