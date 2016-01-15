class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :text

      t.timestamps null: false
    end
  end
end
