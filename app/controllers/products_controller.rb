class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    @categories = Category.pluck(:name, :id)
  end

  # GET /products/1/edit
  def edit
    @categories = Category.pluck(:name, :id)
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user = current_user

    
      if @product.save
         redirect_to products_path, notice: 'Product was successfully created.' 
       
      else
        render :new 
       
      end
    end


  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    #authorize! :destroy, @product
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete_image
    begin
      @image = ActiveStorage::Attachment.find(params[:id])
      @image.purge
      redirect_to product_path(@product), notice: 'Imagen eliminada'
    rescue ActiveRecord::RecordNotFound
      redirect_to product_path(@product), alert: 'Error al eliminar la imagen'
    end
  end
    

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:sku, :product_name, :size, :features, :price, :user_id, :category_id, :image)
    end
end



