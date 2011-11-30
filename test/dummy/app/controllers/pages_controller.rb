Section   = Struct.new( :name, :pages )

Page      = Struct.new( :section, :home_page, :name, :body ) do
  def home_page?
    home_page
  end
end

class PagesController < ApplicationController
  before_filter :mock_models

  private
  def mock_models
    @section  = Section.new 'main', []
    @page     = Page.new @section, params[:section_name].blank?, "main page", "something something"
  end
end
