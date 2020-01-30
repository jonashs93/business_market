class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name, limit: 100
      t.string :cpf, limit: 14, null: false
      t.string :email, limit: 100

      t.timestamps
    end
    add_index :customers, :cpf, unique: true
  end
end
