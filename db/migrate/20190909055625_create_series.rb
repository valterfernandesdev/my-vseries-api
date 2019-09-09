class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :name
      t.string :status
      t.string :img

      t.timestamps
    end
    add_index :series, :name, unique: true
  end
end
