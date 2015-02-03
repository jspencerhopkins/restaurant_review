class ReviewsController < ApplicationController

	def create
		@restaurant = Restaurant.find(params[restaurant_id])
		@review = @article.reviews.create(review_params)
		@user = User.find(params[user_id])
		redirect_to restaurant_path(@restaurant)
	end	

	private
		def review_params
			params.require(:review).permit(:user_id, :comment)
		end

end
