class CreateKinds < ActiveRecord::Migration
  def change
    create_table :kinds do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
