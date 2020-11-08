class Api::TypesController < ApplicationController
  def create
    type = Type.new(
      name: params[:name],
    )
    if type.save
      render json: { message: "Type created successfully."}
    else 
      render json: { errors:type.errors.full_messages}
    end 
  end 

  def index
    @types = Type.all
    render "index.json.jb"
  end 

  def show
    @type = Type.find_by(id:params[:id])
    render "show.json.jb"
  end 
end
