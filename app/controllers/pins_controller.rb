class PinsController < ApplicationController
	def index
		@pins = Pin.all
		render :index
	end

	def new
		@pin = Pin.new
	end

	def show
		@pin = Pin.find(params[:id])
	end

	def create
		@pin = Pin.create pin_params
	end

	def edit 
		@pin = Pin.find(params[:id])
	end

	def destroy
		@pin = Pin.find(params[:id])
		@pin.destroy
		redirect_to '/'
	end

	def update
		@pin = Pin.find(params[:id])
		redirect_to '/pins'
	end

	private

	def pin_params
		params.require(:pin).permit(:image, :url, :comment)
	end

end
