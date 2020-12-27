class Api::V2::SelnamesController < Api::V2::BaseController
  acts_as_token_authentication_handler_for User, except: [:show ]
  before_action :set_selnames, only: [:show]

  def show

  end

  private

  def set_selnames
    @selname = Product.where(name: params[:id])
    authorize @selname  # For Pundit
  end
end
