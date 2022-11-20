class FeedbacksController < ApplicationController
    def index
        render json: Feedback.all
    end

    def show
        feedbacks = Feedback.find(params[:id])
        if feedbacks 
            render json: feedbacks
        else 
            render json: {error: 'feedbacks does not exist'}
        end
    end
    def update
        feedbacks = Feedback.find(params[:id])
        if feedbacks
            feedbacks.update(feedbacks_params) 
            render json: feedbacks
        else 
            render json: {error: 'feedbacks does not exist'}
        end
    end
    
    def destroy
        feedbacks = Feedback.find(params[:id])
        if feedbacks
            feedback.destroy
            render json: { success: 'feedback deleted'}
        else 
            render json: {error: 'feedback does not exist'}
        end
    end

    def create
        feedback = Feedback.create!(feedback_params)
        if feedback.valid?
            render json: feedback
        else 
            render json: {error: 'can not create feedback'}
        end
    end


    private

    def feedback_params
        params.permit(:title, :description, :user.id, :coffee.id)
    end
end
