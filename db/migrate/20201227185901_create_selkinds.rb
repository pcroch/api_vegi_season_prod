class CreateSelkinds < ActiveRecord::Migration[6.0]
  def change
    create_table :selkinds do |t|

      t.timestamps
    end
  end
end
