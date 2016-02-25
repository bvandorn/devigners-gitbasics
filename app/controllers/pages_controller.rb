class PagesController < ApplicationController

  def index

  end

  def hello
    @dontshowheader = true
    @name = params[:name] || "World"
  end

end
