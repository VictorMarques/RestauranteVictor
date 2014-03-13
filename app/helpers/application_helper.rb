#enconding:utf-8
module ApplicationHelper
	def menu_principal

		menu = %w(cliente qualificacao comentario restaurante)
		menu_principal = "<ul>"
		menu.each do |item|
			menu_principal << "<li>"
			menu_principal << link_to(item, :controller => item.pluralize)
			menu_principal << "</li>"
		end

		menu_principal << "</ul>"
		raw menu_principal


end
	def valor_formatado(number)
		number_to_currency(number, :unit => "R$", :separador => ",", :delimiter => ".")
	end

	def comentarios(comentavel)
		comentarios = "<div id='comentarios'>"
		comentarios << "<h3>Comentarios</h3>"
		comentarios << render(comentavel.comentarios) unless  comentavel.comentarios.empty?
		comentarios << "</div>"
		raw comentarios
		end

		def novo_comentario(comentavel)
			form_novo_comentario = render partial: "comentarios/novo_comentario", locals: {comentavel: comentavel}
raw form_novo_comentario
end
end
