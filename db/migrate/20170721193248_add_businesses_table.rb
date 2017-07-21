class AddBusinessesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.column :name, :string
      t.column :type, :string
      t.column :address, :string
    end
  end
end
