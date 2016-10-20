class Cliente < ActiveRecord::Base
	validates :nome, presence: {message: "Deve ser preenchido"}
	validates_numericality_of :idade, greater_than: 0,
									  less_than: 100,
									  message: "Deve ser um numero entre 0 e 100"

	has_many :qualificacoes
end
