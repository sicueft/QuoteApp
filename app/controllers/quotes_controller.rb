class QuotesController < ApplicationController

	def index
	end

	def new
		@quote = Quote.new
	end

	def create
		@quote = Quote.new(quote_params)
	end

	private

	def quote_params
		params.require(:quote).permit(:name, :description)
	end

end
