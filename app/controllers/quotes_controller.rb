class QuotesController < ApplicationController
	before_action :find_quote, only: [:show, :edit, :update, :destroy]

	def index
		@quotes = Quote.all.order("created_at DESC")
	end

	def show
	end

	def new
		@quote = current_user.quotes.build
	end

	def create
		@quote = current_user.quotes.build(quote_params)

		if @quote.save
			redirect_to @quote, notice: "Quote was successfully created."
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @quote.update(quote_params)
			redirect_to @quote, notice: "Quote was successfully updated."
		else
			render 'edit'
		end
	end

	def destroy
		@quote.destroy
		redirect_to root_path
	end

	private

	def quote_params
		params.require(:quote).permit(:name, :description)
	end

	def find_quote
		@quote = Quote.find(params[:id])
	end

end
