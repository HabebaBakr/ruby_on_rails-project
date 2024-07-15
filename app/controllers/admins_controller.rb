class AdminsController < ApplicationController
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
  end

  private
  def set_admin
    @admin=Admin,find(params[:id])
  end
  def admin_params
    params.require(:admin).permit(:first_name, :last_name, :age, :person_dob)
  end
end
