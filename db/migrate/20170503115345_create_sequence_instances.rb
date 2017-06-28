class CreateSequenceInstances < ActiveRecord::Migration[5.1]
  def change
    create_table :sequence_instances do |t|
      t.references :sequence, foreign_key: true
      t.references :session, foreign_key: true
      t.boolean :analysed
      t.datetime :timestamp

      t.timestamps
    end
  end
end
