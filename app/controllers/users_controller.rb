class UsersController < ApplicationController

  def index
    @users = User.all
    render json: { status: 'you made it', data: @users }
  end
end
