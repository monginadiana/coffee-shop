class CoffeesController < ApplicationController
    def index
        render json: Coffee.all
    end

    def show
        coffee = Coffee.find(params[:id])
        if coffee 
            render json: coffee
        else 
            render json: {error: 'coffee does not exist'}
        end
    end
    def update
        coffee = Coffee.find(params[:id])
        if coffee
            coffee.update(coffee_params) 
            render json: coffee
        else 
            render json: {error: 'coffee does not exist'}
        end
    end
    
    def destroy
        coffee = Coffee.find(params[:id])
        if coffee 
            coffee.destroy
            render json: { success: 'Ccoffee deleted'}
        else 
            render json: {error: 'coffee does not exist'}
        end
    end

    def create
        coffee = Coffee.create!(coffee_params)
        if coffee.valid?
            render json: coffee, status: :created
        else 
            render json: {error: 'can not create a coffee '}, status: :unprocessable_entity
        end
    end


    private

    def coffee_params
        params.permit(:name, :price, :description, :image,  :coffee_type, :user_id)
    end
end
