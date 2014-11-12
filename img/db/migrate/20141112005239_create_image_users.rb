class CreateImageUsers < ActiveRecord::Migration
  def change
    create_table :image_users do |t|
      t.number :image_id
      t.number :user_id

      t.timestamps
    end
  end
end
