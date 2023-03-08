# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  before_action :authenticate_user!, except: [:show]
  before_action :set_user, only: %i[edit update]

  def show
    if params[:id]
      @user = User.find(params[:id])
      @can_edit = false
    else
      @user = current_user
      @can_edit = true
    end

    if @user
      render 'show'
    else
      redirect_to new_user_session_path
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_profile_path, notice: 'Profile updated successfully.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :first_name, :last_name)
  end
end
