class Restaurant < ActiveRecord::Migration
  def up
    create_table :restaurants do |t|
      t.string :name

    end
  end

  def down
  end
end
