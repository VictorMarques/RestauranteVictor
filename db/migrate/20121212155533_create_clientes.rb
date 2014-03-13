class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
    	t.string :nome, limit: 80
    	t.string :idade
      t.timestamps
    end
  end
end
