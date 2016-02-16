class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  	# link to this page would be:
  	# <%= link_to product.category.name, categorical_path(cat_id: product.category.id) %>
  	@products = Product.where(category: params[:cat_id])
  end

  def items_by_brand
  	# link to this page would be:
  	# <%= link_to product.brand, branding_path(brand: product.brand) %>
  	@products = Product.where(brand: params[:brand])
  end
end
