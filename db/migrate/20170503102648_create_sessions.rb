class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.date :scandate
      t.string :session_pdf
      t.references :scanner, index: true, foreign_key: true
      t.references :sequence_instances, index: true, foreign_key: true

      t.timestamps
    end
  end
end
