# app/controllers/api/v1/restaurants_controller.rb
class Api::V2::ProductsController < Api::V2::BaseController
    acts_as_token_authentication_handler_for User, except: [ :index, :show ]
    before_action :set_product, only: [ :show, :update , :destroy]
  def index
    @products = policy_scope(Product)
  end

  def show

  end

  def update
    if @product.update(product_params)
      render :show
    else
      render_error
    end
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product
    if @product.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @product.destroy
    head :no_content
    # No need to create a `destroy.json.jbuilder` view
  end

  private

  def set_product
    @product = Product.where(name: params[:id])
    authorize @product  # For Pundit
  end

  def product_params
    params.require(:product).permit(:name, :kind)
  end

  def render_error
    render json: { errors: @product.errors.full_messages },
    status: :unprocessable_entity
  end


end
