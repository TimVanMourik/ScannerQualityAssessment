class CreateScanners < ActiveRecord::Migration[5.1]
  def change
    create_table :scanners do |t|
      t.string :scanner_name

      t.timestamps
    end
  end
end
