class Qualificacao < ActiveRecord::Base
  attr_accessible :nota, :valor_gasto, :cliente_id, :restaurante_id
  belongs_to :cliente
  belongs_to :restaurante
  has_many :comentarios, as: :comentavel
end
