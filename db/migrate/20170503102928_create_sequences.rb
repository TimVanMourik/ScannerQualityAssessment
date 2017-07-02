class CreateSequences < ActiveRecord::Migration[5.1]
  def change
    create_table :sequences do |t|
      t.string :sequence_name

      t.timestamps
    end
  end
end
