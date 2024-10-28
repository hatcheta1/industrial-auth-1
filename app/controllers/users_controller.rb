class UsersController < ApplicationController
  before_action :set_user, only: %i[ show liked feed followers following discover ]

  def index
  end

  def create
  end

  def new
  end

  def update
  end

  def edit
  end

  def destroy
  end

  #####

  def show
  end

  def liked
  end

  def feed
    authorize @user
  end

  def followers
  end

  def following
  end

  def discover
  end

  private

    def set_user
      if params[:username]
        @user = User.find_by!(username: params.fetch(:username))
      else
        @user = current_user
      end
    end
end
