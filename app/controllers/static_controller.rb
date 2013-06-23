class StaticController < ApplicationController

  def index
    @search = Search.new

  end

end
