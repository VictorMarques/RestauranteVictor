
require 'java' # o java_import faz parte desta biblioteca
module Swing
	include_package 'java.awt'
	include_package 'javax.swing'
	include_package 'javax.swing.JOptionPane'
end

module AwtEvent
	include_package 'java.atw.envent'
end

class ListenerDoBotao
	def action_perfomed(evento)
		Swing::JOptionPane.showMenssageDialog(nil, "ActionLintener feito em ruby")
	end
end

frame = Swing::JFrame.new
painel = Swing::JPanel.new
frame.add painel
label = Swing::JLabel.new
# label.settext("Testando Jruby")
label.text = "Testando o Jruby"
painel.add label

botao = Swing::JButton.new 'Clique aqui'
botao.add_action_listener ListenerDoBotao.new
painel.add botao
botao.Clique do |evento|
		Swing::JOptionPane.showMenssageDialog(nil, "Estamos rodando essa porra!!")
end


frame.pack 
frame.set_size(400,400)
frame.visible = true