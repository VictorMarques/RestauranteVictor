class Receita < ActiveRecord::Base
  attr_accessible :prato_id, :conteudo
  validates_presence_of :conteudo, message: " - deve ser preenchido"
  belongs_to :prato
  validates_presence_of :prato_id
  validates_associated :prato
  belongs_to :prato
end
