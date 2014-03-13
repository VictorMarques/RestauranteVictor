#encoding: utf-8
class Restaurante < ActiveRecord::Base
  attr_accessible :nome, :endereco, :especialidade, :foto
  validates_presence_of :nome, mesege: "deve ser preenchido"
  validates_presence_of :endereco, mesege: "deve ser preenchido"
  validates_presence_of :especialidade, mesege: "deve ser preenchido"



validates_uniqueness_of :nome, message: "nome já cadastrado"
validates_uniqueness_of :endereco, message: "endereço já cadastrado"
validate :primeira_letra_deve_ser_maiuscula
has_many :qualificacoes
has_and_belongs_to_many :prato
has_many :comentarios, :as  => :comentavel
	
	
	has_attached_file :foto, :styles =>
{ :medium => "300x300", :thumb => "100x100>", :original => "800x600" }
validates_attachment_content_type :foto, :content_type => ["image/bmp", "image/x-png", "image/pjpeg", "image/jpeg", "image/png", "image/gif"]



private


def primeira_letra_deve_ser_maiuscula
	errors.add(:nome, 
		" primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/

end
end