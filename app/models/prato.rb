class Prato < ActiveRecord::Base
	validates :nome, presence: {message: "Deve ser preenchido"}
	validates :nome, uniqueness: {message:"Nome já cadastrado"}

	has_and_belongs_to_many :restaurantes
	has_one :receita

	validate :validate_presence_of_more_than_one_restaurante
	
	private
	
	def validate_presence_of_more_than_one_restaurante
		errors.add("restaurantes",
				   "deve haver ao menos um restaurante") if restaurantes.empty?
	end

end
