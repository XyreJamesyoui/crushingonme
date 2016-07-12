class UsersController < ApplicationController
  def show
    @show_user = User.find(params[:id])
    if current_user
      if @show_user.id == current_user.id
        #redirect_to root_path#
      end
    end
  end
  
  def add_crush
    @user = User.find(params[:id])
    @crush = @user.crushes.create(crush_params)
    redirect_to '/users/' + @user.id.to_s
  end
  private
    def crush_params
      params.permit(:message)
    end
end
