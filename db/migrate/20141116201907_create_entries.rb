class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :NGO
      t.string :Name
      t.string :Position
      t.string :Address
      t.string :Email

      t.timestamps
    end
  end
end
