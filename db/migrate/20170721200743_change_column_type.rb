class ChangeColumnType < ActiveRecord::Migration[5.1]
  def change
    rename_column :businesses, :type, :business_type

  end
end
