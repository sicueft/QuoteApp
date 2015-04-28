class QuotesController < ApplicationController
	before_action :find_quote, only: [:show, :edit, :update, :destroy]

	def index
		@quotes = Quote.all.order("created_at DESC")
	end

	def show
	end

	def new
		@quote = Quote.new
	end

	def create
		@quote = Quote.new(quote_params)

		if @quote.save
			redirect_to @quote, notice: "Quote was successfully created."
		else
			render 'new'
		end
	end

	private

	def quote_params
		params.require(:quote).permit(:name, :description)
	end

	def find_quote
		@quote = Quote.find(params[:id])
	end

end
