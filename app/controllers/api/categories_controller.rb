class Api::CategoriesController < ApplicationController
  before_action :authenticate_user
  def create
    @category = Category.new(
      name: params[:name],
      target_budget_amount: params[:target_budget_amount],
      occurence: params[:occurence],
      user_id: current_user.id,
    )
    if @category.save
      render json: { message: "Category created successfully"}
    else
      render json: { errors: @category.errors.full_messages }
    end
  end  

  def index
    @categories = current_user.categories.includes(:items)
    render "index.json.jb"
  end 

  def show
    @category = Category.find_by(id:params[:id])
    render "show.json.jb"
  end 
end
