class AuthorsController < ApplicationController
  def new
  end

  def index
    @authors = Author.all
  end

  def create
    #render plain: params[:author].inspect
    @author = Author.new(params.require(:author).permit(:first_name, :last_name, :homepage))
    @author.save()
    redirect_to @author
  end
  def show
    @author = Author.find(params[:id])
  end

end
