class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
