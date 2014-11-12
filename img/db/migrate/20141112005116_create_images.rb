class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.boolean :public
      t.number :user_id

      t.timestamps
    end
  end
end