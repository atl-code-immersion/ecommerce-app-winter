class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :orders, :salex_tax, :sales_tax
  end
end
