class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  # Returns the list of user posts
  #
  #@response_status 201
  #@response_root users
  #@response_class Array<PostSerializer>
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  # Show details user
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  # POST /users
  # Create user post
  #
  # @body_parameter [string] name
  # @body_parameter [string] email
  #
  # @response_class UserSerializer
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # Updating user available in DB
  # @body_parameter [string] name
  # @body_parameter [string] email
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # Deleting user available in DB.
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :email)
    end
end
