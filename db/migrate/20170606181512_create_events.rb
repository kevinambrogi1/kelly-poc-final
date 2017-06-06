class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.text :title
      t.datetime :date
      t.string :address
      t.string :description

      t.timestamps
    end
  end
end
