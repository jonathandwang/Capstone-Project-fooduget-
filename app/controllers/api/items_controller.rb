class Api::ItemsController < ApplicationController
  def create
    item = Item.new(
      name: params[:name],
      price: params[:price],
      category_id: params[:category_id],
      date_bought: params[:date_bought],
    )
    if item.save
      render json: { message: "Item created successfuly."}
    else 
      render json: { errors: item.errors.full_messages}
    end 
  end 

  def index
    @items = Item.all
    render "index.json.jb"
  end 

  def show
    @item = Item.find_by(id:params[:id])
    render "show.json.jb"
  end 
end
