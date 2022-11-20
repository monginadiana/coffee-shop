class SessionsController < ApplicationController

    def create
        user = User.find_by(username: session_params[:username])
        if user && user.authenticate(session_params[:password])
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: {error: "Invalid username or password"}, status: :unauthorized
        end
    end

    def session_params
        params.permit(:username, :password)
    end

    # def destroy
    #     session.delete :user_id
    #     head :no_content
    # end
end