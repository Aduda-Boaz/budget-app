class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Category.includes(icon_attachemnt: :blob).where(user_id: current_user.id)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user_id = current_user.id
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
