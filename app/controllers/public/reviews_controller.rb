class Public::ReviewsController < ApplicationController
        before_action :authenticate_customer!, except: [:index,:show]
        def index
         @reviews =Review.page(params[:page])
        end
        def show
         @review = Review.find(params[:id])
        end
        def new
         @review =Review.new
        end
        def create
          @review = Review.new(review_params)
          @review.customer_id = current_customer.id
          if@review.save
          redirect_to review_path(@review.id)
          else
          render :new
          end
        end        
        def edit
        end
        def update
        end
        def destroy
            review = Review.find(params[:id])
            review.destroy
            redirect_to  shop_reviews_path
        end
        private
  def review_params
    params.require(:review).permit(:title, :introduction,:image,:shop_id)
end
end
