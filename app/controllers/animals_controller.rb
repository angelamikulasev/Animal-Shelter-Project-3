class AnimalsController < ApplicationController
  # skip_before_filter :verify_authenticity_token

  def index
    @animals = if params[:category].present?
      category = Category.where(name: params[:category]).first
      Animal.where(category_id: category.id)
    else
      Animal.all
    end
  end

  def show
    @animal = Animal.find params[:id]
  end

  private

  def animal_params
    params.require(:product).permit(:name, :about_me, :ideal_home, :species, :gender, :child_friendly, :image)
  end
end
