class CreateFires < ActiveRecord::Migration
  def change
    create_table :fires do |t|
      t.string :name
      t.integer :incident
      t.text :description
      t.string :owner
      t.string :status
      t.text :root_cause_analysis

      t.timestamps
    end
  end
end
