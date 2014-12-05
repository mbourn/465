class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :charge
      t.integer :promise_time
      t.boolean :public
      t.string :req

      t.timestamps
    end
  end
end
