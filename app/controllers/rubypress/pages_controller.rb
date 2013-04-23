# app/controllers/rubypress/pages_controller.rb
require_dependency "rubypress/application_controller"

module Rubypress
  class PagesController < ApplicationController
    def index
      @pages = Page.all
    end
    
    def show
      @page = Page.find(params[:id])
    end
    
    def new
      @page = Page.new
    end
    
    def create
      @page = Page.new(page_params)
      if @page.save
        redirect_to @page, notice: 'Page was successfully created.' 
      else
        render action: "show" 
      end
    end

    private 

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:name, :content, :path)
    end
  end
end