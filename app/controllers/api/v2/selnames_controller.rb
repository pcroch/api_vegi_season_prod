class Api::V2::SelnamesController < Api::V2::BaseController
  acts_as_token_authentication_handler_for User, except: [:show ]
  before_action :set_selnames, only: [:show]

  def show
    # render json: { product_month: @month, status: :success }
  end

  private

  def set_selnames
    @selname = Product.where(name: params[:id])
    authorize @selname  # For Pundit
  end

  # def selname_params
  #   params.require(:selname).permit(:name, :kind, :months_available)
  # end

  # def render_error
  #   render json: { errors: @selname.errors.full_messages },
  #   status: :unprocessable_entity
  # end


end
