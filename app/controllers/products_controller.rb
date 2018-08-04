class ProductsController < ApplicationController
    def jumpsuits
    end

    def details
        @amount = params[:amount]
        @category = params[:category]
        @p_name = params[:p_name]
        @p_img = params[:img]
    end

    def cart
        @amount = params[:amount]
        @amount_stripe = Float(params[:amount]) * 100
        @p_name = params[:p_name]
        @p_img = params[:img]
    end

    def payment_confirmation
        Stripe.api_key = "sk_test_dqQe9JsaGQUzyuIEMDSKdM94"

        # Token is created using Checkout or Elements!
        # Get the payment token ID submitted by the form:
        token = params[:stripeToken]

        charge = Stripe::Charge.create({
            amount: 999,
            currency: 'eur',
            description: 'Example charge',
            source: token,
        })
    end
end
