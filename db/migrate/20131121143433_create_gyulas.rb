class CreateGyulas < ActiveRecord::Migration
  def change
    create_table :gyulas do |t|

      t.timestamps
    end
  end
end
