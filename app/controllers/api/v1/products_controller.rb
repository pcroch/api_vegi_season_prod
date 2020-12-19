# app/controllers/api/v1/restaurants_controller.rb
class Api::V1::ProductsController < Api::V1::BaseController
  def index
    @products = policy_scope(Product)
  end
end
