class CreatePhoneModels < ActiveRecord::Migration[6.0]
  def change
    create_table :phone_models do |t|
      t.string :name, limit: 100, null: false
      t.timestamps
    end
  end
end
