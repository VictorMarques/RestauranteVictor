require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    fixtures :restaurantes
  
  def test_restaurante
  	restaurante = Restaurante.new(
  		:nome => restaurantes(:Willy H. da SIlva).nome, 
  		:endereco => restaurantes(:Willy H. da SIlva).endereco,
  		:especialidade => restaurantes(:Willy H. da SIlva).especialidade)

  	msg = "restaurante nao foi salvo. "
  	+ "errors: ${restaurante.errors.inspect}"
  	assert restaurante.save, msg

  	restaurante_Willy H. da SIlva_copia = Restaurante.find(restaurante.id)
  	
  	assert_equal restaurante.nome, restaurante_Willy H. da SIlva_copia.nome
  end
end

end
