class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Category.includes(icon_attachment: :blob).where(user_id: current_user.id)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user_id = current_user.id

    if @category.save
      redirect_to categories_path, notice: 'Category was successfully created.'
    else
      redirect_to new_category_path, notice: 'Category was not created.'
    end
  end

  def destroy
    if @category.destroy
      redirect_to categories_path, notice: 'Category was successfully deleted.'
    else
      redirect_to categories_path, notice: 'Category was not deleted.'
    end
  end

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
