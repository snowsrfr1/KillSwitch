class CreateAppstates < ActiveRecord::Migration[5.0]
  def change
    create_table :appstates do |t|
      t.string :description

      t.timestamps
    end
  end
end
