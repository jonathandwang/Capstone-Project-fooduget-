class Api::CategoriesController < ApplicationController
  def create
    category = Category.new(
      name: params[:name],
      target_budget_amount: params[:target_budget_amount],
      occurence: params[:occurence],
      user_id: params[:user_id],
    )
    if category.save
      render json: { message: "Category created successfully"}
    else
      render json: { errors: category.errors.full_messages }
    end
  end  

  def index
    @categories = Category.all
    render "index.json.jb"
  end 

  def show
    @category = Category.find_by(id:params[:id])
    render "show.json.jb"
  end 
end
