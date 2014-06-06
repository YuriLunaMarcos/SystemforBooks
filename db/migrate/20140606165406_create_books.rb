class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :claveinterna
      t.string :ejemplar
      t.string :autor
      t.string :editorial
      t.string :tema
      t.string :isbn
      t.string :categoria
      t.references :provider, index: true

      t.timestamps
    end
  end
end
