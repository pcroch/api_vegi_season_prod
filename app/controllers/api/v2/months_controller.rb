# app/controllers/api/v1/restaurants_controller.rb
class Api::V2::MonthsController < Api::V2::BaseController
    acts_as_token_authentication_handler_for User, except: [:show ]
    before_action :set_month, only: [:show]

  def show
    # render json: { product_month: @month, status: :success }
  end

  private

  def set_month
    @month = Product.where(months_available: params[:id])
    authorize @month  # For Pundit
  end

  def month_params
    params.require(:month).permit(:name, :kind, :months_available)
  end

  def render_error
    render json: { errors: @month.errors.full_messages },
    status: :unprocessable_entity
  end


end
