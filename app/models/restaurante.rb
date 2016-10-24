class Restaurante < ActiveRecord::Base
	attr_accessible :nome, :endereco, :especialidade

	validates :nome, presence: { message: "Deve ser preenchido"}
	validates :endereco, presence: { message: "Deve ser preenchido"}
	validates :especialidade, presence: { message: "Deve ser preenchida"}
	validates :nome, uniqueness: { message: "Já cadastrado"}

	has_many :qualificacoes
	has_and_belongs_to_many :pratos
	#validate :primeira_letra_deve_ser_maiuscula

=begin
	private
	def primeira_letra_deve_ser_maiuscula
		erros.add(:nome, "primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/			
		end
	end
=end
end