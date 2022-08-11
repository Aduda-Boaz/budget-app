class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.text :name
      t.string :amount, default: 0.0

      t.timestamps
    end
  end
end