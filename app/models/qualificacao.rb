class Qualificacao < ActiveRecord::Base
	validates :nota, presence: {message: "Deve ser preenchido"}	
	validates :valor_gasto, presence: {message: "Deve ser preenchido"}	
	validates_numericality_of :nota, greater_than: 0,
									  less_than: 10,
									  message: "Deve ser um numero entre 0 e 10"
	validates_numericality_of :valor_gasto, greater_than: 0,
									  message: "Deve ser um numero maior que 0"
	validates :cliente_id, :restaurante_id, presence: true
	validates_associated :cliente, :restaurante

	belongs_to :cliente
	belongs_to :restaurante
end
