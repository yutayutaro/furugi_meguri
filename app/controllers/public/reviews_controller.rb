class Public::ReviewsController < ApplicationController
        before_action :authenticate_customer!, except: [:index,:show]
        def index
         @reviews =Review.page(params[:page]).per(5)
        end
        def show
         @review = Review.find(params[:id])
        end
        def new
        @review =Review.new
        @shops = Shop.where(id: current_customer.bookmarks.pluck(:shop_id))
        end  
        def create
          @review = Review.new(review_params)
          @review.customer_id = current_customer.id
          if @review.save
             redirect_to review_path(@review.id)
          else
              @shops = Shop.where(id: current_customer.bookmarks.pluck(:shop_id))
              render :new
          end
        end        
        def edit
         @review = Review.find(params[:id])   
        end
        def update
            review = Review.find(params[:id])
            review.update(review_params)
            redirect_to  review_path(params[:id])
        end
        def destroy
            review = Review.find(params[:id])
            review.destroy
            redirect_to  reviews_path
        end
        private
  def review_params
    params.require(:review).permit(:title, :introduction,:image,:shop_id)
end
end
