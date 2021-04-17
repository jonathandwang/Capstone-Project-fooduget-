class Api::ItemTypesController < ApplicationController
  def create
    item_type = ItemType.new(
      type_id: params[:type_id],
      item_id: params[:item_id],
    )
    if item_type.save
      render json: { message: "Item_type created successfully"}
    else 
      render json: { errors: item_type.errors.full_messages }
    end 
  end

  def index
    @item_types = current_user.item_types
    render "index.json.jb"
  end

  def show
    @item_type = ItemType.find_by(id:params[:id])
    render "show.json.jb"
  end 

  def destroy
    item = item.find(params[:id])
    if item
      item.destroy
      item.save
      render json: { message: "Item Successfully Deleted!" }
    else 
      render json: { message: "Item Deletion Unsuccessful!" }
  end 
end
