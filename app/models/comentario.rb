class Comentario < ActiveRecord::Base
  attr_accessible :comentavel_id, :comentavel_type, :conteudo
  belongs_to :comentavel, polymorphic: true
end
