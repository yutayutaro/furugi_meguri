class Public::SearchesController < ApplicationController
    def index      
        if params[:search_method] == "keyword"
        @shops = Shop.search(params[:keyword])
        @search_word = params[:keyword]
    elsif params[:search_method] == "address"
        @shops =Shop.address_search(params[:address_keyword])
        @search_word = params[:address_keyword]
    end
    end
end
