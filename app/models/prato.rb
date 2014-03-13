#encoding: utf-8
class Prato < ActiveRecord::Base
  attr_accessible :nome
  validates_presence_of :nome, message: " - deve ser preenchido"
  validates_uniqueness_of :nome, message: " - nome já cadastrado"
   has_and_belongs_to_many :restaurantes
  has_one :receita
  validate :validates_presence_of_more_than_one_restaurante
  has_one :receita
end
  private
  def validates_presence_of_more_than_one_restaurante
    errors.add("restaurantes",
      "deve haver ao menis um restaurantes") if restaurantes.empty?
    has_and_belongs_to_many :restaurantes

end