class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :phone
      t.references :contact, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
