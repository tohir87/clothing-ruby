class CustomerController < ApplicationController
    protect_from_forgery
    def new
        @customer = Customer.new
    end

    def do_login
        customer = Customer.find_by_email(params[:email])
        #if customer && customer.authenticate(params[:password])
        if customer
          session[:customer_id] = customer.id
          session[:first_name] = customer.first_name
          session[:last_name] = customer.last_name
          flash[:success] = "Login was successful"
          redirect_to "/welcome/index"
        else
          flash[:notice] = "Email or password is invalid."
          redirect_to "/customer/login"
        end
    end

    def create
        @customer = Customer.create(customer_params)
        if @customer.save
            flash[:success] = "Registration completed successfully"
            redirect_to "/welcome/index"
        else
            flash[:error] = "Unable to complete registration. please try again"
            redirect_to :back
        end
    end

    #destroy method
    def destroy
        Customer.find(params[:id]).destroy
    end



    private

    def customer_params
        params.require(:customer).permit(:first_name, :last_name, :email, :password, :phone, :address)
    end



end
