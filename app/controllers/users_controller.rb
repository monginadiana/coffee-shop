class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def show
        user = User.find_by(id: session[:user_id])
        if user 
            render json: user, status: :ok
        else 
            render json: {error: 'user does not exist'}, status: :unprocessable_entity
        end
    end
    
    def update
        user = User.find(params[:id])
        if user
            user.update(user_params) 
            render json: user
        else 
            render json: {error: 'user does not exist'}
        end
    end
    
    def destroy
        user = User.find(params[:id])
        if user 
            user.destroy
            render json: { success: 'user deleted'}
        else 
            render json: {error: 'user does not exist'}
        end
    end

    def create
        user = User.create!(user_params)
        if user.valid?
            render json: user, status: :created
        else 
            render json: {error: 'can not create user'}
        end
    end


    private

    def user_params
        params.permit(:username, :password, :email, :avatar)
    end
end
