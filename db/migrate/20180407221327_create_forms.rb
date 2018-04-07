class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :forms do |t|
      t.string :name
      t.boolean :published

      t.timestamps
    end
  end
end
