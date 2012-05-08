class CreateNewusers < ActiveRecord::Migration
  def change
    create_table :newusers do |t|

      t.timestamps
    end
  end
end
