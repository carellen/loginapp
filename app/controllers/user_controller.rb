class UserController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user

  def show; end

  private

    def find_user
      @user = User.find(params[:id])
    end
end
