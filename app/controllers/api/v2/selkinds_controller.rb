class Api::V2::SelkindsController < Api::V2::BaseController
  acts_as_token_authentication_handler_for User, except: [:show ]
  before_action :set_selkinds, only: [:show]

  def show

  end

  private

  def set_selkinds
    @selkind = Product.where(kind: params[:id])
    authorize @selkind  # For Pundit
  end
end
