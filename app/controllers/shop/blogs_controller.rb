class Shop::BlogsController < ApplicationController
       before_action :authenticate_shop!
      def new
          @blog = Blog.new
      end
      def index
          @blog = Blog.page(params[:page])
      end
      def create
          @blog = Blog.new(blog_params)
          @blog.shop_id = current_shop.id
         if @blog.save
          redirect_to shop_blog_path(@blog.id)
      else
          render :new
      end
      end
      def show
          @blog = Blog.find(params[:id])
      end      
      def edit
          @blog = Blog.find(params[:id])
      end
      def update
          
          blog = Blog.find(params[:id])
          blog.update(blog_params)
          redirect_to shop_blog_path(params[:id])
      end
      def destroy
          blog = Blog.find(params[:id])  
          blog.destroy  
          redirect_to new_shop_blog_path
      end
       private
  def blog_params
    params.require(:blog).permit(:title, :introduction,:image)
end
end
