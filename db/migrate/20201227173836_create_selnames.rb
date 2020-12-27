class CreateSelnames < ActiveRecord::Migration[6.0]
  def change
    create_table :selnames do |t|

      t.timestamps
    end
  end
end
