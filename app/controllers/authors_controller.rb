class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end
  d
end
