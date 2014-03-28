require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    fixtures :restaurantes
  
  def test_restaurante
  	restaurante = Restaurante.new(
  		:nome => restaurantes(:renato).nome, 
  		:endereco => restaurantes(:renato).endereco,
  		:especialidade => restaurantes(:renato).especialidade)

  	msg = "restaurante nao foi salvo. "
  	+ "errors: ${restaurante.errors.inspect}"
  	assert restaurante.save, msg

  	restaurante_renato_copia = Restaurante.find(restaurante.id)
  	
  	assert_equal restaurante.nome, restaurante_renato_copia.nome
  end
end

end
