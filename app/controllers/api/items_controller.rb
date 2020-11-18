class Api::ItemsController < ApplicationController
  before_action :authenticate_user
  def create
    @item = Item.new(
      name: params[:name],
      price: params[:price],
      category_id: params[:category_id],
      #add category drop down for current_user
      date_bought: params[:date_bought],
    )
    if @item.save
      render json: { message: "Item created successfuly."}
    else
      pp @item.errors.full_messages
      render json: { errors: @item.errors.full_messages}
    end 
  end 

  def index
    @items = current_user.items
    render "index.json.jb"
  end 

  def show
    @item = Item.find_by(id:params[:id])
    render "show.json.jb"
  end 
end
