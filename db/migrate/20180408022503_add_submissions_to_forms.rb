class AddSubmissionsToForms < ActiveRecord::Migration[5.1]
  def change
    add_reference :submissions, :forms, foreign_key: true
  end
end
