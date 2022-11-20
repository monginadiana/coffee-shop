class ToppingsController < ApplicationController

    def index
        render json: Topping.all
    end

    def show
        toppings = Topping.find(params[:id])
        if toppings
            render json: toppings
        else 
            render json: {error: 'toppings does not exist'}
        end
    end
    def update
        toppings = Topping.find(params[:id])
        if toppings
            toppings.update(toppings_params) 
            render json: toppings
        else 
            render json: {error: 'toppings does not exist'}
        end
    end
    
    def destroy
        toppings = Topping.find(params[:id])
        if toppings  
            toppings.destroy
            render json: { success: 'toppings deleted'}
        else 
            render json: {error: 'toppings does not exist'}
        end
    end

    def create
        toppings = Topping.create!(toppings_params)
        if toppings.valid?
            render json: toppings
        else 
            render json: {error: 'can not create coffee toppings'}
        end
    end


    private

    def toppings_params
        params.permit(:name, :coffee.id )
    end
end
