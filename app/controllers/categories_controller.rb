class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category  = Cartegory.find params[:id]
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end