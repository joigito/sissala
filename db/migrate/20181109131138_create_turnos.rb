class CreateTurnos < ActiveRecord::Migration[5.1]
  def change
    create_table :turnos do |t|
      t.date :fecha
      t.string :horario
      t.references :responsable, foreign_key: true
      t.date :solicitado

      t.timestamps
    end
  end
end
