class CreateFormValues < ActiveRecord::Migration[5.1]
  def change
    create_table :form_values do |t|
      t.references :form_field, foreign_key: true
      t.string :value

      t.timestamps
    end
  end
end
