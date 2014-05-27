class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :amount_in_cents
      t.boolean :completed
      t.timestamps
    end
  end
end
