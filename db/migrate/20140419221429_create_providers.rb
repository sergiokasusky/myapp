class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.text :nombre_comercial
      t.text :nombre_contacto
      t.text :email
      t.text :password
      t.text :razon_social
      t.text :rfc

      t.timestamps
    end
  end
end
