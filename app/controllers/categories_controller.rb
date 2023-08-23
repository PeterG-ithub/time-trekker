class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.build(categories_params)
    if @category.save
      redirect_to app_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def categories_params
    params.require(:category).permit(:title)
  end
end
