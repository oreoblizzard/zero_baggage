class AdminsController < ApplicationController

  before_action :redirect_member

  def index
    @orders = Order.all
    @items = Item.all

  end


  private

  def redirect_member
    redirect_to after_sign_in_path_for(current_user) if current_user.is_a? Member
  end

end
