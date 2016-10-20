class Receita < ActiveRecord::Base
	validates :conteudo, presence: {message: "Deve ser preenchido"}
	validates :prato_id, presence: true
	validates_associated :prato

	belongs_to :prato
end
