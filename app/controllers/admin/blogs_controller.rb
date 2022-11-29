class Admin::BlogsController < ApplicationController
      before_action :authenticate_admin!
      def index
      end
      def show
            @blog = Blog.find(params[:id])
      end
      def destroy
            blog = Blog.find(params[:id])
            blog.destroy
            redirect_to admin_path
      end
end
