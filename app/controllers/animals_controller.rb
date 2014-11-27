class AnimalsController < ApplicationController
  before_filter :authorize, only: [:new, :create, :adopt]

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

    @animal.adopt! current_user

    redirect_to @animal, notice: 'Animal successfully adopted'  
  end

  def waiting_for_adoption
    @animals = Animal.where adopter_id: nil

    render :index
  end

  def edit
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :about_me, :ideal_home, :species, :gender, :child_friendly, :breed, :image, :image_cache, :remote_image_url)
  end
end
