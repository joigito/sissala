class CreateResponsables < ActiveRecord::Migration[5.1]
  def change
    create_table :responsables do |t|
      t.string :nombre
      t.boolean :docente
      t.string :materia

      t.timestamps
    end
  end
end
