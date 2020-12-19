class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.text :name
      t.text :kind
      t.text :months_available
      t.text :seasons_available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
