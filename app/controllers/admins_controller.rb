class AdminsController < ApplicationController
  before_filter :set_admin , only: [:show, :edit, :destroy]
  
  def index
    @admins = Admin.all
  end

  def show
  end

  def new
    @admin = Admin.new(admin_params)
  
    if admin.save
      render json: @admin , status: :created
    else
      render json: @admin.errors, status: :unprocessable_entity
  end

  def edit
  end

  def destroy
    @admin.destroy!
    head :no_content
    
  rescue ActiveRecord::RecordNotDestroyed
    render json{}, status: :unprocessable_entity

  end

  private
  def set_admin
    @admin=Admin,find(params[:id])
  end
  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :age, :person_dob)
  end
end
