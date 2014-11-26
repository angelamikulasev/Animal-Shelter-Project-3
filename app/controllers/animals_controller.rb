class AnimalsController < ApplicationController
  # before_filter :authorize, only: [:adopt]

  def new
    @animal = current_user.surrenders.new
  end

  def create
    @animal = current_user.surrenders.new animal_params

    if @animal.save
      redirect_to @animal, notice: 'Animal successfully created and waiting for adoption'
    else
      render :new
    end
  end

  def index
    @animals = if params[:category].present?
      category = Category.where(name: params[:category]).first
      Animal.where category_id: category.id
    else
      Animal.all
    end
  end

  def show
    @animal = Animal.find params[:id]
  end

  def adopt
    @animal = Animal.find params[:id]

    if @animal.adopt! current_user
      redirect_to @animal, notice: 'Animal successfully adopted'
    elsif
      redirect_to @animal, notice: 'Animal could not be adopted'
    else
      redirect_to new_session_path
    end
  end

  def waiting_for_adoption
    # @animals = if Animal.where adoptee_id: nil
    # else
    @animals = Animal.where adoptee_id: nil

    render :index
    # end
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :about_me, :ideal_home, :species, :gender, :child_friendly, :image)
  end
end
