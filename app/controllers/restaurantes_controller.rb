class RestaurantesController < ApplicationController
	def index
		@restaurantes = Restaurante.order :nome
	end

	# apenas para enviar a informação para a pagina
	def show		
		@restaurante = Restaurante.find(params[:id])
	end

	def destroy
		@restaurante = Restaurante.find(params[:id])
		@restaurante.destroy
		redirect_to(action: "index")
	end

	# apenas para enviar a informação para a pagina
	def new
		@restaurante = Restaurante.new
	end

	def create
		@restaurante = Restaurante.new(params[:restaurante])

		if @restaurante.save
			redirect_to action: "show", id: @restaurante
		else
			render action: "new"
		end
	end

	# apenas para enviar a informação para a pagina
	def edit
		@restaurante = Restaurante.find(params[:id])
	end

	def update
		@restaurante = Restaurante.find(params[:id])
		
		if @restaurante.update_attributes(params[:restaurante])
			redirect_to action: "show", id: @restaurante
		else
			render action: "edit"
		end
	end
end
