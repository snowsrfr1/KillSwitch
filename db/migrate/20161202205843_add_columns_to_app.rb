class AddColumnsToApp < ActiveRecord::Migration[5.0]
  def change
    add_column :apps, :bundlename, :string
    add_column :apps, :key, :string
  end
end
