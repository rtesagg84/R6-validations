class OrdersController < ApplicationController
   before_action :set_post
        def index
          @customer = Customer.find(params[:customer_id])
          @order = @customer.orders
        end
      
        # GET /order/1 or /customers/1.json
        def show
        end
      
        # GET /order/new
        def new
          @order= rder.new
        end
      
        # GET /order/1/edit
        def edit
          @order = Order.find(params[:id])
        end
      
        # POST /order
        def create
          @order = @customer.orders.create(order_params)
          if @order.save
            flash.notice = "The order record was created successfully."
            redirect_to customer_path(@customer)
          else
            flash.now.alert = @order.errors.full_messages.to_sentence
            render :new  
          end
        end
      
        # PATCH/PUT /order
        def update
          @order = Order.find(params[:id])
          @order.update(order_params)
          redirect_to @customer 
        end
      
        # DELETE /order
        def destroy
          @order = Order.find(params[:id])
          @order.destroy
          redirect_to @customer
        end
      
        private
        def order_params
          params.require(:order).permit(:product_name, :product_count,:customer_id)
        end
      
        def set_post
          @customer = Customer.find(params[:customer_id])
        end
        
          def catch_not_found(e)
            Rails.logger.debug("We had a not found exception.")
            flash.alert = e.to_s
            redirect_to customers_path
      end
      
 end
 