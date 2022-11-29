class Public::SearchesController < ApplicationController
    def index      
        @shops = Shop.search(params[:keyword])
        @search_word = params[:keyword]
    end
end
