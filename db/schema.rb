# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130117175651) do

  create_table "clientes", :force => true do |t|
    t.string   "nome",       :limit => 80
    t.string   "idade"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "comentarios", :force => true do |t|
    t.text     "conteudo"
    t.integer  "comentavel_id"
    t.string   "comentavel_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "comentarios", ["comentavel_id"], :name => "index_comentarios_on_comentavel_id"
  add_index "comentarios", ["comentavel_type"], :name => "index_comentarios_on_comentavel_type"

  create_table "homes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pratos", :force => true do |t|
    t.string   "nome",       :limit => 80
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "pratos_restaurantes", :id => false, :force => true do |t|
    t.integer "prato_id"
    t.integer "restaurante_id"
  end

  create_table "qualificacoes", :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "restaurante_id"
    t.float    "nota"
    t.float    "valor_gasto"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "qualificacoes", ["cliente_id"], :name => "index_qualificacoes_on_cliente_id"
  add_index "qualificacoes", ["restaurante_id"], :name => "index_qualificacoes_on_restaurante_id"

  create_table "receita", :force => true do |t|
    t.integer  "prato_id"
    t.text     "conteudo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "restaurantes", :force => true do |t|
    t.string   "nome",              :limit => 80
    t.string   "endereco"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "especialidade"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
