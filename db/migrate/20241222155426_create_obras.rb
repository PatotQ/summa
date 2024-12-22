class CreateObras < ActiveRecord::Migration[8.0]
  def change
    create_table :obras do |t|
      t.string :titulo
      t.text :descripcion
      t.string :dimensiones
      t.string :materiales
      t.integer :anio
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
