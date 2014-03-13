#ecoding:utf-8
require 'test_helper'

class RestaurantesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  fixtures :restaurantes

def test_procura_restaurante
	get :busca, :nome => 'Willy H. da SIlva'
	assert_not_nil assigns(:restaurante)
assert_equal restaurantes(:Willy H. da SIlva).nome, assigns(:restaurante).nome
assert_redirected_to :action => 'show'
end

def test_procura_restaurante_nao_encontra
	get :busca, :nome => 'Botequin'
	assert_redirected_to :action => 'index'
	assert_equal 'Restaurante não encontrado.', flash[:notice]
end

end