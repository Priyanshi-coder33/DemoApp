class UsersController < ApplicationController
  skip_before_action :set_current_user, :authenticate_request, only: :create

  # GET /users
  def index
    if params[:me].present?
      @users = User.find(@current_user_id)
    else
      @users = User.all
    end
    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.create(Name:params["users"]["Name"],Email:params["users"]["Email"],password_digest:params["users"]["password"])
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:Name, :Email)
    end
end
