class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.build(categories_params)
    respond_to do |format| 
      if @category.save
        format.turbo_stream
        redirect_to app_path
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def categories_params
    params.require(:category).permit(:title)
  end
end
