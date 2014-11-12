class CreateImageusers < ActiveRecord::Migration
  def change
    create_table :imageusers do |t|
      t.references :image, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
