class AddNumberInstallmentsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :number_installments, :integer, null: false
  end
end
